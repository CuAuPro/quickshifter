/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
 * All rights reserved.</center></h2>
 *
 * This software component is licensed by ST under BSD 3-Clause license,
 * the "License"; You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at:
 *                        opensource.org/licenses/BSD-3-Clause
 *
 ******************************************************************************
 */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "adc.h"
#include "tim.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "settings.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
volatile uint8_t flag_adc_high_treshold = 0;
volatile uint8_t flag_adc_low_treshold = 0;

Settings_t Settings;
Control_t Control;
uint16_t value;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	Settings.CutoffTime = DEFAULT_TIME_IGNITION_OFF;
	Settings.deadtime = DEFAULT_TIME_NO_SENSING;
	Settings.ShiftForce = DEFAULT_SHIFT_FORCE;

	Control.CutoffTime = Settings.CutoffTime;
	Control.deadtime = Settings.deadtime;

	Control.ShiftForceADCHighTsh = (((float)INST_AMP_GAIN*(0.4189*(float)Settings.ShiftForce) - 2.9365) + DEFAULT_ADC_IDLE);
	Control.ShiftForceADCLowTsh  = (((float)INST_AMP_GAIN*(-0.4189*(float)Settings.ShiftForce) - 2.9365) + DEFAULT_ADC_IDLE);
	/* USER CODE END 1 */

	/* MCU Configuration--------------------------------------------------------*/

	/* Reset of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();

	/* USER CODE BEGIN Init */

	/* USER CODE END Init */

	/* Configure the system clock */
	SystemClock_Config();

	/* USER CODE BEGIN SysInit */

	/* USER CODE END SysInit */

	/* Initialize all configured peripherals */
	MX_GPIO_Init();
	MX_ADC_Init();
	MX_TIM1_Init();
	MX_TIM14_Init();
	MX_TIM16_Init();
	/* USER CODE BEGIN 2 */
	//HAL_GPIO_WritePin(ERROR_GPIO_Port, ERROR_Pin, RESET);
	HAL_GPIO_WritePin(IGN_CUTOFF_GPIO_Port, IGN_CUTOFF_Pin, RESET);

	//HAL_TIM_Base_Start(&htim1);
	HAL_TIM_Base_Start(&htim14);
	HAL_TIM_Base_Start(&htim16);
	HAL_ADC_Start_IT(&hadc);


	ADC1->CR |= ADC_CR_ADSTP;
	ADC1->IER &= ~(ADC_IER_AWD1IE);
	/* Shift the offset in function of the selected ADC resolution: Thresholds*/
	/* have to be left-aligned on bit 11, the LSB (right bits) are set to 0   */
	uint32_t tmpAWDHighThresholdShifted = ADC_AWD1THRESHOLD_SHIFT_RESOLUTION(&hadc, Control.ShiftForceADCHighTsh);
	uint32_t tmpAWDLowThresholdShifted = ADC_AWD1THRESHOLD_SHIFT_RESOLUTION(&hadc, Control.ShiftForceADCLowTsh);
	/* Set the high and low thresholds */
	hadc.Instance->TR &= ~(ADC_TR_HT | ADC_TR_LT);
	hadc.Instance->TR |= (ADC_TRX_HIGHTHRESHOLD(tmpAWDHighThresholdShifted) | tmpAWDLowThresholdShifted);
	/* Clear the ADC Analog watchdog flag (in case of left enabled by         */
	/* previous ADC operations) to be ready to use for HAL_ADC_IRQHandler()   */
	/* or HAL_ADC_PollForEvent().                                             */
	__HAL_ADC_CLEAR_FLAG(&hadc, ADC_IT_AWD);

	ADC1->IER |= (ADC_IER_AWD1IE);
	ADC1->CR |= ADC_CR_ADSTART;
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	while (1)
	{
		//HAL_ADC_PollForConversion(&hadc, HAL_MAX_DELAY); //Testing force when shifting.
		//value = HAL_ADC_GetValue(&  hadc); //Testing force when shifting.

		/*/////////////////////////////////¸
	  PULL SYSTEM GOES BELOW MINIMUM LEVEL, PUSH SYSTEM GOES ABOVE MAXIMUM LEVEL!
		 *////////////////
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	}
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI|RCC_OSCILLATORTYPE_HSI14;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSI14State = RCC_HSI14_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.HSI14CalibrationValue = 16;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL12;
  RCC_OscInitStruct.PLL.PREDIV = RCC_PREDIV_DIV1;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */
	//HAL_GPIO_TogglePin(ERROR_GPIO_Port, ERROR_Pin);
	//HAL_Delay(500);
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
	/* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
