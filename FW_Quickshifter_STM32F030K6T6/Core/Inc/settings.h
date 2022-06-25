/*
 * settings.h
 *
 *  Created on: Jul 7, 2020
 *      Author: Kristjan
 */

#ifndef INC_SETTINGS_H_
#define INC_SETTINGS_H_

#include "main.h"

#define DEFAULT_ADC_IDLE					1300	//ADC value
#define DEFAULT_SHIFT_FORCE					29		//kg
#define DEFAULT_TIME_IGNITION_OFF 			65		//ms
#define DEFAULT_TIME_NO_SENSING  			500		//ms
#define DEFAULT_SECOND_RUN_TIME_NO_SENSING  100		//ms

#define INST_AMP_GAIN						99
#define	ADC_VOLTAGE_REF						3300 	//mV

#define MAX_TIME_IGNITION_OFF				150		//ms
#define MAX_TIME_NO_SENSING					1000	//ms

#define POS_TIME_GEAR_1_2	0
#define POS_TIME_GEAR_2_3	1
#define POS_TIME_GEAR_3_4	2
#define POS_TIME_GEAR_4_5	3
#define POS_TIME_GEAR_5_6	4
#define POS_TIME_DEADTIME	5
#define POS_SHIFT_FORCE		6


typedef struct Settings{

	uint16_t CutoffTime;
	uint16_t deadtime;
	uint16_t ShiftForce;

} Settings_t;

typedef struct Control{

	uint16_t CutoffTime;
	uint16_t deadtime;
	int16_t ShiftForceADCLowTsh;
	int16_t ShiftForceADCHighTsh;

} Control_t;



#endif /* INC_SETTINGS_H_ */
