//
// Created by hndx on 2021/3/18.
//

/**                                                               
 * @author      haifeng   
 * @file        distinguish.c                                       
 * @date        2021/3/18 下午8:40                                                                                                   
 * @version     1.0         
 * @description 
 * @update
 *  2021/3/18 下午8:40 :
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "globals.h"
#include "constants.h"
#include "gv_file.h"
#include "gv_utils.h"
#include "sats.h"
#include "orbit_utils.h"
#include "savi.h"

char *distinguish_on_cmd(int argc, char *argv[]) {

    footprint_each_on_cmd(argc, argv);

    return EMPTY_str;
}

/*
 * footprint_each_off_cmd()
 *
 * Routine to turn off display of a footprint
 */
char *distinguish_off_cmd(int argc, char *argv[]) {

    footprint_each_off_cmd(argc, argv);

    return EMPTY_str;
}