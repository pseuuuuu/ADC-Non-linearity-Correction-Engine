
module NLC_4sec_8th_order_16ch_v0 (
  input clk,
  input GlobalReset,

  output srdyo, // ufix1
  input srdyi, // ufix1

  //NLC ports for channel 15
  output [20:0] ch15_x_lin, // sfix21
  input  [20:0] ch15_x_adc, // sfix21
  input  [19:0] ch15_section_limit, // ufix20
  input  [31:0] ch15_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 14
  output [20:0] ch14_x_lin, // sfix21
  input  [20:0] ch14_x_adc, // sfix21
  input  [19:0] ch14_section_limit, // ufix20
  input  [31:0] ch14_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 13
  output [20:0] ch13_x_lin, // sfix21
  input  [20:0] ch13_x_adc, // sfix21
  input  [19:0] ch13_section_limit, // ufix20
  input  [31:0] ch13_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 12
  output [20:0] ch12_x_lin, // sfix21
  input  [20:0] ch12_x_adc, // sfix21
  input  [19:0] ch12_section_limit, // ufix20
  input  [31:0] ch12_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 11
  output [20:0] ch11_x_lin, // sfix21
  input  [20:0] ch11_x_adc, // sfix21
  input  [19:0] ch11_section_limit, // ufix20
  input  [31:0] ch11_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 10
  output [20:0] ch10_x_lin, // sfix21
  input  [20:0] ch10_x_adc, // sfix21
  input  [19:0] ch10_section_limit, // ufix20
  input  [31:0] ch10_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 9
  output [20:0] ch9_x_lin, // sfix21
  input  [20:0] ch9_x_adc, // sfix21
  input  [19:0] ch9_section_limit, // ufix20
  input  [31:0] ch9_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 8
  output [20:0] ch8_x_lin, // sfix21
  input  [20:0] ch8_x_adc, // sfix21
  input  [19:0] ch8_section_limit, // ufix20
  input  [31:0] ch8_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 7
  output [20:0] ch7_x_lin, // sfix21
  input  [20:0] ch7_x_adc, // sfix21
  input  [19:0] ch7_section_limit, // ufix20
  input  [31:0] ch7_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 6
  output [20:0] ch6_x_lin, // sfix21
  input  [20:0] ch6_x_adc, // sfix21
  input  [19:0] ch6_section_limit, // ufix20
  input  [31:0] ch6_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 5
  output [20:0] ch5_x_lin, // sfix21
  input  [20:0] ch5_x_adc, // sfix21
  input  [19:0] ch5_section_limit, // ufix20
  input  [31:0] ch5_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 4
  output [20:0] ch4_x_lin, // sfix21
  input  [20:0] ch4_x_adc, // sfix21
  input  [19:0] ch4_section_limit, // ufix20
  input  [31:0] ch4_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 3
  output [20:0] ch3_x_lin, // sfix21
  input  [20:0] ch3_x_adc, // sfix21
  input  [19:0] ch3_section_limit, // ufix20
  input  [31:0] ch3_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 2
  output [20:0] ch2_x_lin, // sfix21
  input  [20:0] ch2_x_adc, // sfix21
  input  [19:0] ch2_section_limit, // ufix20
  input  [31:0] ch2_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 1
  output [20:0] ch1_x_lin, // sfix21
  input  [20:0] ch1_x_adc, // sfix21
  input  [19:0] ch1_section_limit, // ufix20
  input  [31:0] ch1_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 0
  output [20:0] ch0_x_lin, // sfix21
  input  [20:0] ch0_x_adc, // sfix21
  input  [19:0] ch0_section_limit, // ufix20
  input  [31:0] ch0_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_0_porty // ufix32

);
	wire srdyo1;
	wire srdyo0;
NLC_1ch N0(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo0), 
  .srdyi(srdyi),
  .x_adc(ch0_x_adc),//NLC output 
  .x_lin(ch0_x_lin),//ADC output 
  .section_limit(ch0_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch0_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch0_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch0_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch0_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch0_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch0_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch0_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch0_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch0_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch0_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch0_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch0_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch0_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch0_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch0_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch0_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch0_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch0_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch0_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch0_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch0_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch0_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch0_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch0_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch0_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch0_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch0_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch0_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch0_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch0_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch0_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch0_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch0_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch0_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch0_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch0_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch0_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch0_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch0_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch0_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch0_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch0_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch0_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch0_select_section_coefficients_coeff_1_0_porty)
  );  

  NLC_1ch N1(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo1), 
  .srdyi(srdyi),
  .x_adc(ch1_x_adc),//NLC output 
  .x_lin(ch1_x_lin),//ADC output 
  .section_limit(ch1_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch1_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch1_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch1_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch1_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch1_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch1_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch1_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch1_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch1_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch1_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch1_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch1_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch1_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch1_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch1_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch1_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch1_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch1_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch1_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch1_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch1_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch1_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch1_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch1_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch1_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch1_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch1_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch1_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch1_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch1_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch1_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch1_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch1_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch1_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch1_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch1_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch1_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch1_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch1_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch1_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch1_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch1_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch1_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch1_select_section_coefficients_coeff_1_0_porty)
  );  

  NLC_1ch N2(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo2), 
  .srdyi(srdyi),
  .x_adc(ch2_x_adc),//NLC output 
  .x_lin(ch2_x_lin),//ADC output 
  .section_limit(ch2_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch2_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch2_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch2_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch2_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch2_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch2_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch2_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch2_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch2_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch2_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch2_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch2_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch2_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch2_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch2_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch2_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch2_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch2_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch2_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch2_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch2_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch2_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch2_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch2_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch2_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch2_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch2_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch2_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch2_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch2_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch2_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch2_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch2_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch2_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch2_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch2_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch2_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch2_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch2_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch2_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch2_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch2_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch2_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch2_select_section_coefficients_coeff_1_0_porty)
  );    

  NLC_1ch N3(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo3), 
  .srdyi(srdyi),
  .x_adc(ch3_x_adc),//NLC output 
  .x_lin(ch3_x_lin),//ADC output 
  .section_limit(ch3_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch3_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch3_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch3_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch3_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch3_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch3_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch3_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch3_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch3_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch3_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch3_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch3_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch3_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch3_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch3_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch3_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch3_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch3_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch3_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch3_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch3_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch3_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch3_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch3_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch3_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch3_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch3_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch3_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch3_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch3_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch3_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch3_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch3_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch3_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch3_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch3_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch3_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch3_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch3_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch3_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch3_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch3_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch3_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch3_select_section_coefficients_coeff_1_0_porty)
  );   

  NLC_1ch N4(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo4), 
  .srdyi(srdyi),
  .x_adc(ch4_x_adc),//NLC output 
  .x_lin(ch4_x_lin),//ADC output 
  .section_limit(ch4_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch4_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch4_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch4_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch4_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch4_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch4_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch4_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch4_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch4_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch4_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch4_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch4_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch4_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch4_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch4_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch4_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch4_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch4_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch4_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch4_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch4_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch4_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch4_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch4_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch4_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch4_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch4_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch4_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch4_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch4_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch4_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch4_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch4_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch4_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch4_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch4_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch4_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch4_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch4_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch4_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch4_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch4_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch4_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch4_select_section_coefficients_coeff_1_0_porty)
  );  

  NLC_1ch N5(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo5), 
  .srdyi(srdyi),
  .x_adc(ch5_x_adc),//NLC output 
  .x_lin(ch5_x_lin),//ADC output 
  .section_limit(ch5_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch5_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch5_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch5_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch5_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch5_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch5_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch5_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch5_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch5_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch5_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch5_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch5_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch5_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch5_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch5_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch5_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch5_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch5_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch5_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch5_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch5_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch5_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch5_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch5_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch5_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch5_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch5_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch5_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch5_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch5_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch5_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch5_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch5_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch5_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch5_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch5_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch5_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch5_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch5_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch5_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch5_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch5_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch5_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch5_select_section_coefficients_coeff_1_0_porty)
  );   
  
  NLC_1ch N6(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo6), 
  .srdyi(srdyi),
  .x_adc(ch6_x_adc),//NLC output 
  .x_lin(ch6_x_lin),//ADC output 
  .section_limit(ch6_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch6_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch6_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch6_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch6_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch6_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch6_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch6_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch6_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch6_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch6_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch6_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch6_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch6_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch6_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch6_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch6_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch6_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch6_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch6_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch6_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch6_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch6_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch6_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch6_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch6_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch6_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch6_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch6_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch6_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch6_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch6_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch6_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch6_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch6_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch6_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch6_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch6_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch6_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch6_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch6_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch6_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch6_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch6_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch6_select_section_coefficients_coeff_1_0_porty)
  );  

  NLC_1ch N7(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo7), 
  .srdyi(srdyi),
  .x_adc(ch7_x_adc),//NLC output 
  .x_lin(ch7_x_lin),//ADC output 
  .section_limit(ch7_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch7_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch7_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch7_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch7_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch7_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch7_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch7_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch7_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch7_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch7_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch7_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch7_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch7_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch7_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch7_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch7_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch7_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch7_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch7_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch7_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch7_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch7_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch7_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch7_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch7_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch7_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch7_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch7_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch7_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch7_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch7_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch7_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch7_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch7_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch7_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch7_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch7_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch7_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch7_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch7_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch7_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch7_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch7_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch7_select_section_coefficients_coeff_1_0_porty)
  );  

NLC_1ch N8(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo8), 
  .srdyi(srdyi),
  .x_adc(ch8_x_adc),//NLC output 
  .x_lin(ch8_x_lin),//ADC output 
  .section_limit(ch8_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch8_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch8_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch8_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch8_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch8_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch8_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch8_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch8_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch8_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch8_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch8_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch8_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch8_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch8_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch8_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch8_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch8_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch8_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch8_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch8_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch8_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch8_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch8_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch8_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch8_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch8_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch8_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch8_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch8_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch8_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch8_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch8_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch8_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch8_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch8_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch8_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch8_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch8_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch8_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch8_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch8_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch8_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch8_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch8_select_section_coefficients_coeff_1_0_porty)
  );  

  NLC_1ch N9(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo9), 
  .srdyi(srdyi),
  .x_adc(ch9_x_adc),//NLC output 
  .x_lin(ch9_x_lin),//ADC output 
  .section_limit(ch9_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch9_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch9_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch9_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch9_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch9_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch9_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch9_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch9_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch9_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch9_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch9_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch9_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch9_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch9_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch9_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch9_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch9_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch9_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch9_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch9_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch9_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch9_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch9_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch9_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch9_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch9_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch9_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch9_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch9_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch9_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch9_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch9_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch9_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch9_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch9_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch9_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch9_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch9_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch9_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch9_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch9_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch9_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch9_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch9_select_section_coefficients_coeff_1_0_porty)
  );  

  NLC_1ch N10(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo10), 
  .srdyi(srdyi),
  .x_adc(ch10_x_adc),//NLC output 
  .x_lin(ch10_x_lin),//ADC output 
  .section_limit(ch10_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch10_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch10_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch10_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch10_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch10_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch10_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch10_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch10_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch10_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch10_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch10_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch10_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch10_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch10_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch10_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch10_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch10_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch10_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch10_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch10_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch10_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch10_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch10_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch10_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch10_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch10_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch10_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch10_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch10_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch10_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch10_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch10_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch10_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch10_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch10_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch10_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch10_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch10_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch10_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch10_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch10_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch10_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch10_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch10_select_section_coefficients_coeff_1_0_porty)
  );  

  NLC_1ch N11(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo11), 
  .srdyi(srdyi),
  .x_adc(ch11_x_adc),//NLC output 
  .x_lin(ch11_x_lin),//ADC output 
  .section_limit(ch11_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch11_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch11_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch11_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch11_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch11_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch11_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch11_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch11_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch11_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch11_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch11_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch11_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch11_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch11_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch11_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch11_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch11_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch11_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch11_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch11_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch11_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch11_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch11_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch11_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch11_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch11_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch11_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch11_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch11_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch11_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch11_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch11_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch11_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch11_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch11_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch11_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch11_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch11_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch11_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch11_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch11_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch11_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch11_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch11_select_section_coefficients_coeff_1_0_porty)
  );   

  NLC_1ch N12(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo12), 
  .srdyi(srdyi),
  .x_adc(ch12_x_adc),//NLC output 
  .x_lin(ch12_x_lin),//ADC output 
  .section_limit(ch12_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch12_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch12_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch12_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch12_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch12_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch12_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch12_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch12_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch12_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch12_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch12_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch12_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch12_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch12_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch12_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch12_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch12_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch12_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch12_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch12_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch12_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch12_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch12_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch12_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch12_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch12_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch12_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch12_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch12_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch12_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch12_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch12_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch12_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch12_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch12_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch12_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch12_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch12_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch12_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch12_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch12_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch12_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch12_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch12_select_section_coefficients_coeff_1_0_porty)
  );   

  NLC_1ch N13(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo13), 
  .srdyi(srdyi),
  .x_adc(ch13_x_adc),//NLC output 
  .x_lin(ch13_x_lin),//ADC output 
  .section_limit(ch13_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch13_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch13_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch13_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch13_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch13_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch13_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch13_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch13_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch13_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch13_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch13_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch13_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch13_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch13_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch13_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch13_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch13_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch13_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch13_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch13_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch13_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch13_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch13_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch13_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch13_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch13_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch13_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch13_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch13_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch13_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch13_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch13_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch13_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch13_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch13_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch13_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch13_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch13_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch13_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch13_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch13_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch13_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch13_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch13_select_section_coefficients_coeff_1_0_porty)
  );  

  NLC_1ch N14(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo14), 
  .srdyi(srdyi),
  .x_adc(ch14_x_adc),//NLC output 
  .x_lin(ch14_x_lin),//ADC output 
  .section_limit(ch14_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch14_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch14_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch14_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch14_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch14_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch14_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch14_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch14_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch14_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch14_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch14_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch14_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch14_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch14_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch14_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch14_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch14_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch14_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch14_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch14_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch14_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch14_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch14_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch14_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch14_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch14_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch14_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch14_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch14_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch14_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch14_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch14_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch14_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch14_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch14_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch14_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch14_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch14_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch14_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch14_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch14_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch14_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch14_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch14_select_section_coefficients_coeff_1_0_porty)
  );  

  NLC_1ch N15(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo15), 
  .srdyi(srdyi),
  .x_adc(ch15_x_adc),//NLC output 
  .x_lin(ch15_x_lin),//ADC output 
  .section_limit(ch15_section_limit),//X-value that separates the sections 
  .select_section_coefficients_stdev_4_porty(ch15_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .select_section_coefficients_stdev_3_porty(ch15_select_section_coefficients_stdev_3_porty), 
  .select_section_coefficients_stdev_2_porty(ch15_select_section_coefficients_stdev_2_porty), 
  .select_section_coefficients_stdev_1_porty(ch15_select_section_coefficients_stdev_1_porty), 
  .select_section_coefficients_mean_4_porty(ch15_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .select_section_coefficients_mean_3_porty(ch15_select_section_coefficients_mean_3_porty), 
  .select_section_coefficients_mean_2_porty(ch15_select_section_coefficients_mean_2_porty), 
  .select_section_coefficients_mean_1_porty(ch15_select_section_coefficients_mean_1_porty), 
  .select_section_coefficients_coeff_4_8_porty(ch15_select_section_coefficients_coeff_4_8_porty), 
  .select_section_coefficients_coeff_4_7_porty(ch15_select_section_coefficients_coeff_4_7_porty), 
  .select_section_coefficients_coeff_4_6_porty(ch15_select_section_coefficients_coeff_4_6_porty), 
  .select_section_coefficients_coeff_4_5_porty(ch15_select_section_coefficients_coeff_4_5_porty), 
  .select_section_coefficients_coeff_4_4_porty(ch15_select_section_coefficients_coeff_4_4_porty), 
  .select_section_coefficients_coeff_4_3_porty(ch15_select_section_coefficients_coeff_4_3_porty), 
  .select_section_coefficients_coeff_4_2_porty(ch15_select_section_coefficients_coeff_4_2_porty), 
  .select_section_coefficients_coeff_4_1_porty(ch15_select_section_coefficients_coeff_4_1_porty), 
  .select_section_coefficients_coeff_4_0_porty(ch15_select_section_coefficients_coeff_4_0_porty), 
  .select_section_coefficients_coeff_3_8_porty(ch15_select_section_coefficients_coeff_3_8_porty), 
  .select_section_coefficients_coeff_3_7_porty(ch15_select_section_coefficients_coeff_3_7_porty), 
  .select_section_coefficients_coeff_3_6_porty(ch15_select_section_coefficients_coeff_3_6_porty), 
  .select_section_coefficients_coeff_3_5_porty(ch15_select_section_coefficients_coeff_3_5_porty), 
  .select_section_coefficients_coeff_3_4_porty(ch15_select_section_coefficients_coeff_3_4_porty), 
  .select_section_coefficients_coeff_3_3_porty(ch15_select_section_coefficients_coeff_3_3_porty), 
  .select_section_coefficients_coeff_3_2_porty(ch15_select_section_coefficients_coeff_3_2_porty), 
  .select_section_coefficients_coeff_3_1_porty(ch15_select_section_coefficients_coeff_3_1_porty), 
  .select_section_coefficients_coeff_3_0_porty(ch15_select_section_coefficients_coeff_3_0_porty), 
  .select_section_coefficients_coeff_2_8_porty(ch15_select_section_coefficients_coeff_2_8_porty), 
  .select_section_coefficients_coeff_2_7_porty(ch15_select_section_coefficients_coeff_2_7_porty), 
  .select_section_coefficients_coeff_2_6_porty(ch15_select_section_coefficients_coeff_2_6_porty), 
  .select_section_coefficients_coeff_2_5_porty(ch15_select_section_coefficients_coeff_2_5_porty), 
  .select_section_coefficients_coeff_2_4_porty(ch15_select_section_coefficients_coeff_2_4_porty), 
  .select_section_coefficients_coeff_2_3_porty(ch15_select_section_coefficients_coeff_2_3_porty), 
  .select_section_coefficients_coeff_2_2_porty(ch15_select_section_coefficients_coeff_2_2_porty), 
  .select_section_coefficients_coeff_2_1_porty(ch15_select_section_coefficients_coeff_2_1_porty), 
  .select_section_coefficients_coeff_2_0_porty(ch15_select_section_coefficients_coeff_2_0_porty), 
  .select_section_coefficients_coeff_1_8_porty(ch15_select_section_coefficients_coeff_1_8_porty), 
  .select_section_coefficients_coeff_1_7_porty(ch15_select_section_coefficients_coeff_1_7_porty), 
  .select_section_coefficients_coeff_1_6_porty(ch15_select_section_coefficients_coeff_1_6_porty), 
  .select_section_coefficients_coeff_1_5_porty(ch15_select_section_coefficients_coeff_1_5_porty), 
  .select_section_coefficients_coeff_1_4_porty(ch15_select_section_coefficients_coeff_1_4_porty), 
  .select_section_coefficients_coeff_1_3_porty(ch15_select_section_coefficients_coeff_1_3_porty), 
  .select_section_coefficients_coeff_1_2_porty(ch15_select_section_coefficients_coeff_1_2_porty), 
  .select_section_coefficients_coeff_1_1_porty(ch15_select_section_coefficients_coeff_1_1_porty), 
  .select_section_coefficients_coeff_1_0_porty(ch15_select_section_coefficients_coeff_1_0_porty)
  );   
	
assign srdyo = srdyo15 | srdyo14 | srdyo13 | srdyo12 | srdyo11 | srdyo10 | srdyo9 | srdyo8 | srdyo7 | srdyo6 | srdyo5 | srdyo4 | srdyo3 | srdyo2 | srdyo1 | srdyo0;
endmodule

module NLC_1ch (
	clk,
	GlobalReset,
	srdyo,
	srdyi,
	x_lin,
	x_adc,
	section_limit,
	select_section_coefficients_stdev_4_porty,
	select_section_coefficients_stdev_3_porty,
	select_section_coefficients_stdev_2_porty,
	select_section_coefficients_stdev_1_porty,
	select_section_coefficients_mean_4_porty,
	select_section_coefficients_mean_3_porty,
	select_section_coefficients_mean_2_porty,
	select_section_coefficients_mean_1_porty,
	select_section_coefficients_coeff_4_8_porty, // ufix32
	select_section_coefficients_coeff_4_7_porty, // ufix32
	select_section_coefficients_coeff_4_6_porty, // ufix32
	select_section_coefficients_coeff_4_5_porty, // ufix32
	select_section_coefficients_coeff_4_4_porty, // ufix32
	select_section_coefficients_coeff_4_3_porty, // ufix32
	select_section_coefficients_coeff_4_2_porty, // ufix32
	select_section_coefficients_coeff_4_1_porty, // ufix32
	select_section_coefficients_coeff_4_0_porty, // ufix32
	select_section_coefficients_coeff_3_8_porty, // ufix32
	select_section_coefficients_coeff_3_7_porty, // ufix32
	select_section_coefficients_coeff_3_6_porty, // ufix32
	select_section_coefficients_coeff_3_5_porty, // ufix32
	select_section_coefficients_coeff_3_4_porty, // ufix32
	select_section_coefficients_coeff_3_3_porty, // ufix32
	select_section_coefficients_coeff_3_2_porty, // ufix32
	select_section_coefficients_coeff_3_1_porty, // ufix32
	select_section_coefficients_coeff_3_0_porty, // ufix32
	select_section_coefficients_coeff_2_8_porty, // ufix32
	select_section_coefficients_coeff_2_7_porty, // ufix32
	select_section_coefficients_coeff_2_6_porty, // ufix32
	select_section_coefficients_coeff_2_5_porty, // ufix32
	select_section_coefficients_coeff_2_4_porty, // ufix32
	select_section_coefficients_coeff_2_3_porty, // ufix32
	select_section_coefficients_coeff_2_2_porty, // ufix32
	select_section_coefficients_coeff_2_1_porty, // ufix32
	select_section_coefficients_coeff_2_0_porty, // ufix32
	select_section_coefficients_coeff_1_8_porty, // ufix32
	select_section_coefficients_coeff_1_7_porty, // ufix32
	select_section_coefficients_coeff_1_6_porty, // ufix32
	select_section_coefficients_coeff_1_5_porty, // ufix32
	select_section_coefficients_coeff_1_4_porty, // ufix32
	select_section_coefficients_coeff_1_3_porty, // ufix32
	select_section_coefficients_coeff_1_2_porty, // ufix32
	select_section_coefficients_coeff_1_1_porty, // ufix32
	select_section_coefficients_coeff_1_0_porty
);
	  input clk;
	  input GlobalReset;

	  output srdyo; // ufix1
	  input srdyi; // ufix1

	  //NLC ports for channel 15
	  output signed [20:0] x_lin; // sfix21
	  input  signed [20:0] x_adc; // sfix21
	  input  [19:0] section_limit; // ufix20
	  input  [31:0] select_section_coefficients_stdev_4_porty; // ufix32
	  input  [31:0] select_section_coefficients_stdev_3_porty; // ufix32
	  input  [31:0] select_section_coefficients_stdev_2_porty; // ufix32
	  input  [31:0] select_section_coefficients_stdev_1_porty; // ufix32
	  input [31:0] select_section_coefficients_mean_4_porty; // ufix32
	  input [31:0] select_section_coefficients_mean_3_porty; // ufix32
	  input  [31:0] select_section_coefficients_mean_2_porty; // ufix32
	  input  [31:0] select_section_coefficients_mean_1_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_4_8_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_4_7_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_4_6_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_4_5_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_4_4_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_4_3_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_4_2_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_4_1_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_4_0_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_3_8_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_3_7_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_3_6_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_3_5_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_3_4_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_3_3_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_3_2_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_3_1_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_3_0_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_2_8_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_2_7_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_2_6_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_2_5_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_2_4_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_2_3_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_2_2_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_2_1_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_2_0_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_1_8_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_1_7_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_1_6_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_1_5_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_1_4_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_1_3_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_1_2_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_1_1_porty; // ufix32
	  input  [31:0] select_section_coefficients_coeff_1_0_porty; // ufix32
	  
	  wire signed [20:0] x_adc_w;
	  
	  wire 	  [31:0] adder1_x_w;
	  wire 	  [31:0] adder1_y_w;
	  wire   [31:0] adder1_z_w;
	  wire   adder1_srdyi;
	  wire   adder1_srdyo;
	  
	  wire 	  [31:0] multiplier1_x_w;
	  wire 	  [31:0] multiplier1_y_w;
	  wire   [31:0] multiplier1_z_w;
	  wire   multiplier1_srdyi;
	  wire   multiplier1_srdyo;
	  
	  wire 	 [31:0] adder2_x_w;
	  wire 	 [31:0] adder2_y_w;
	  wire   [31:0] adder2_z_w;
	  wire   adder2_srdyi;
	  wire   adder2_srdyo;
	  
	  wire 	 [31:0] multiplier2_x_w;
	  wire 	 [31:0] multiplier2_y_w;
	  wire   [31:0] multiplier2_z_w;
	  wire   multiplier2_srdyi;
	  wire   multiplier2_srdyo;
	  
	  wire 	 [31:0] stof_x_w;
	  //reg 	 [31:0] stof_x_r;
	  wire 	 signed[20:0] stof_y_w;
	  //reg 	 [20:0] stof_y_r;
	  wire	 stof_srdyi;
	  wire	 stof_srdyo;
	  
	  wire  [31:0] ftos_y_w;
	  wire 	 signed[20:0] ftos_x_w;
	  wire	 ftos_srdyi;
	  wire	 ftos_srdyo;
	  //reg [20:0] x_adc_r; 
	  
	  reg [5:0] state = 0;
	  reg [5:0] next_state = 0;
	  
	  reg [31:0] select_section_coefficients_stdev = 0;
	  reg [31:0] select_section_coefficients_mean = 0;
	  reg [31:0] select_section_coefficients_coeff_8 = 0;
	  reg [31:0] select_section_coefficients_coeff_7 = 0;
	  reg [31:0] select_section_coefficients_coeff_6 = 0;
	  reg [31:0] select_section_coefficients_coeff_5 = 0;
	  reg [31:0] select_section_coefficients_coeff_4 = 0;
	  reg [31:0] select_section_coefficients_coeff_3 = 0;
	  reg [31:0] select_section_coefficients_coeff_2 = 0;
	  reg [31:0] select_section_coefficients_coeff_1 = 0;
	  reg [31:0] select_section_coefficients_coeff_0 = 0;
	  
fp_to_smc_float ftos(
	.clk(clk),
	.GlobalReset(GlobalReset),
	.y_o_portx(ftos_y_w),
	.x_i(ftos_x_w),
	.srdyo_o(ftos_srdyo),
	.srdyi_i(ftos_srdyi)
);	  
	  
smc_float_to_fp stof (
	.clk(clk),
	.GlobalReset(GlobalReset),
	.x_i_porty(stof_x_w),
	.y_o(stof_y_w),
	.srdyo_o(stof_srdyo),
	.srdyi_i(stof_srdyi)
);

smc_float_adder adder1(
  .clk(clk),
  .GlobalReset(GlobalReset),
  .x_i_porty(adder1_x_w), // ufix32_En0
  .y_i_porty(adder1_y_w), // ufix32_En0
  .z_o_portx(adder1_z_w), // ufix32_En0
  .srdyo_o(adder1_srdyo), // ufix1
  .srdyi_i(adder1_srdyi) // ufix1
);

smc_float_multiplier multiplier1(
  .clk(clk),
  .GlobalReset(GlobalReset),
  .x_i_porty(multiplier1_x_w), // ufix32_En0
  .y_i_porty(multiplier1_y_w), // ufix32_En0
  .z_o_portx(multiplier1_z_w), // ufix32_En0
  .srdyo_o(multiplier1_srdyo), // ufix1
  .srdyi_i(multiplier1_srdyi) // ufix1
);

smc_float_adder adder2(
  .clk(clk),
  .GlobalReset(GlobalReset),
  .x_i_porty(adder2_x_w), // ufix32_En0
  .y_i_porty(adder2_y_w), // ufix32_En0
  .z_o_portx(adder2_z_w), // ufix32_En0
  .srdyo_o(adder2_srdyo), // ufix1
  .srdyi_i(adder2_srdyi) // ufix1
);

smc_float_multiplier multiplier2(
  .clk(clk),
  .GlobalReset(GlobalReset),
  .x_i_porty(multiplier2_x_w), // ufix32_En0
  .y_i_porty(multiplier2_y_w), // ufix32_En0
  .z_o_portx(multiplier2_z_w), // ufix32_En0
  .srdyo_o(multiplier2_srdyo), // ufix1
  .srdyi_i(multiplier2_srdyi) // ufix1
);
	  
	  reg  [31:0] x_smc_r;
	  
	  
	  reg [2:0] N_loop;
	  
	  
	  reg signed [20:0] x_lin_r;
	  reg srdyo_r;
	  assign ftos_srdyi = srdyi;
	  assign stof_srdyi = 1;
	  assign adder1_srdyi = ftos_srdyo;
	  assign adder2_srdyi = 1;
	  assign multiplier1_srdyi = adder1_srdyo;
	  assign multiplier2_srdyi = 1;
	  assign x_lin = x_lin_r;
	  assign srdyo = srdyo_r;
	  assign x_adc_w = x_adc;
	  assign ftos_x_w = x_adc;
	  assign adder1_x_w = ftos_y_w;
	  assign adder1_y_w = select_section_coefficients_mean;
	  assign multiplier1_x_w = adder1_z_w; 
	  assign multiplier1_y_w = select_section_coefficients_stdev; 
	  assign multiplier2_x_w = x_smc_r;
	  assign multiplier2_y_w = (select_section_coefficients_coeff_8 & {(32){state == 17}}) | (adder2_z_w & {(32){state == 32}}); 
	  assign adder2_x_w = multiplier2_z_w;
	  assign adder2_y_w = {(32){state == 23}} & ((select_section_coefficients_coeff_7 & {(32){N_loop == 3'b111}}) | (select_section_coefficients_coeff_6 & {(32){N_loop == 3'b110}}) | (select_section_coefficients_coeff_5 & {(32){N_loop == 3'b101}}) | (select_section_coefficients_coeff_4 & {(32){N_loop == 3'b100}}) | (select_section_coefficients_coeff_3 & {(32){N_loop == 3'b011}}) | (select_section_coefficients_coeff_2 & {(32){N_loop == 3'b010}}) | (select_section_coefficients_coeff_1 & {(32){N_loop == 3'b001}}) | (select_section_coefficients_coeff_0 & {(32){N_loop == 3'b000}}));
	  assign stof_x_w = adder2_z_w;
				
	  //assign stof_x_w = stof_x_r;
	   //----------combinational logic------------------------
	  always @(*)
	  begin
		if ((x_adc_w <= 0) &&(-x_adc_w > section_limit)) begin
			select_section_coefficients_stdev = select_section_coefficients_stdev_1_porty;
			select_section_coefficients_mean = select_section_coefficients_mean_1_porty;
			select_section_coefficients_coeff_8 = select_section_coefficients_coeff_1_8_porty;
			select_section_coefficients_coeff_7 = select_section_coefficients_coeff_1_7_porty;
	        select_section_coefficients_coeff_6 = select_section_coefficients_coeff_1_6_porty;
	        select_section_coefficients_coeff_5 = select_section_coefficients_coeff_1_5_porty;
	        select_section_coefficients_coeff_4 = select_section_coefficients_coeff_1_4_porty;
	        select_section_coefficients_coeff_3 = select_section_coefficients_coeff_1_3_porty;
	        select_section_coefficients_coeff_2 = select_section_coefficients_coeff_1_2_porty;
	        select_section_coefficients_coeff_1 = select_section_coefficients_coeff_1_1_porty;
	        select_section_coefficients_coeff_0 = select_section_coefficients_coeff_1_0_porty;
		end
		else if (x_adc_w <= 0) begin
				select_section_coefficients_stdev = select_section_coefficients_stdev_2_porty;
				select_section_coefficients_mean = select_section_coefficients_mean_2_porty;
				select_section_coefficients_coeff_8 = select_section_coefficients_coeff_2_8_porty;
				select_section_coefficients_coeff_7 = select_section_coefficients_coeff_2_7_porty;
				select_section_coefficients_coeff_6 = select_section_coefficients_coeff_2_6_porty;
				select_section_coefficients_coeff_5 = select_section_coefficients_coeff_2_5_porty;
				select_section_coefficients_coeff_4 = select_section_coefficients_coeff_2_4_porty;
				select_section_coefficients_coeff_3 = select_section_coefficients_coeff_2_3_porty;
				select_section_coefficients_coeff_2 = select_section_coefficients_coeff_2_2_porty;
				select_section_coefficients_coeff_1 = select_section_coefficients_coeff_2_1_porty;
				select_section_coefficients_coeff_0 = select_section_coefficients_coeff_2_0_porty;
			end
			else if (x_adc_w <= section_limit) begin
				select_section_coefficients_stdev = select_section_coefficients_stdev_3_porty;
				select_section_coefficients_mean = select_section_coefficients_mean_3_porty;
				select_section_coefficients_coeff_8 = select_section_coefficients_coeff_3_8_porty;
				select_section_coefficients_coeff_7 = select_section_coefficients_coeff_3_7_porty;
				select_section_coefficients_coeff_6 = select_section_coefficients_coeff_3_6_porty;
				select_section_coefficients_coeff_5 = select_section_coefficients_coeff_3_5_porty;
				select_section_coefficients_coeff_4 = select_section_coefficients_coeff_3_4_porty;
				select_section_coefficients_coeff_3 = select_section_coefficients_coeff_3_3_porty;
				select_section_coefficients_coeff_2 = select_section_coefficients_coeff_3_2_porty;
				select_section_coefficients_coeff_1 = select_section_coefficients_coeff_3_1_porty;
				select_section_coefficients_coeff_0 = select_section_coefficients_coeff_3_0_porty;
				end
				else begin
				select_section_coefficients_stdev = select_section_coefficients_stdev_4_porty;
				select_section_coefficients_mean = select_section_coefficients_mean_4_porty;
				select_section_coefficients_coeff_8 = select_section_coefficients_coeff_4_8_porty;
				select_section_coefficients_coeff_7 = select_section_coefficients_coeff_4_7_porty;
				select_section_coefficients_coeff_6 = select_section_coefficients_coeff_4_6_porty;
				select_section_coefficients_coeff_5 = select_section_coefficients_coeff_4_5_porty;
				select_section_coefficients_coeff_4 = select_section_coefficients_coeff_4_4_porty;
				select_section_coefficients_coeff_3 = select_section_coefficients_coeff_4_3_porty;
				select_section_coefficients_coeff_2 = select_section_coefficients_coeff_4_2_porty;
				select_section_coefficients_coeff_1 = select_section_coefficients_coeff_4_1_porty;
				select_section_coefficients_coeff_0 = select_section_coefficients_coeff_4_0_porty;
				end
	  end
	  
	  always @(*)
	  begin
		if (GlobalReset == 1'b1) next_state = 0;
		else begin
			case (state)
			0: if (srdyi) next_state = 36; else next_state = 0;
			36: next_state = 1; 
			1: next_state = 2;
			2: next_state = 3;
			3: next_state = state + 1;
			4: next_state = state + 1;
			5: next_state = state + 1;
			6: next_state = state + 1;
			7: next_state = state + 1;
			8: next_state = state + 1;
			9: next_state = state + 1;
			10: next_state = state + 1;//adder1001
			11: next_state = state + 1;
			12: next_state = state + 1;
			13: next_state = state + 1;
			14: next_state = state + 1;
			15: next_state = state + 1;
			16: next_state = state + 1;
			17: next_state = state + 1; //multi1 111
			18: next_state = state + 1;
			19: next_state = state + 1;
			20: next_state = state + 1;
			21: next_state = state + 1;
			22: next_state = state + 1;
			23: next_state = state + 1;
			24: next_state = state + 1;
			25: next_state = state + 1;
			26: next_state = state + 1;
			27: next_state = state + 1;
			28: next_state = state + 1;
			29: next_state = state + 1;
			30: next_state = state + 1;
			31: next_state = state + 1;
			32: if (N_loop > 3'b000) next_state = 18;
				else next_state = state + 1;
			33: next_state = state + 1;
			34: next_state = state + 1;
			35: next_state = 0;
			default: next_state = 0;
			endcase
		end
	  end
	  
	  
	   //----------sequential logic------------------------
	  always @(posedge clk)
	  begin
		  
		
			state <= next_state;
			case (state)
				16: begin x_smc_r <= multiplier1_z_w; N_loop <= 3'b111; end
				32: if (N_loop > 0) N_loop <= N_loop - 1;
			endcase
	
			
	  end
	  
	   //----------output logic------------------------
	  always @(posedge clk)
	  begin
		if (GlobalReset == 1'b1) begin x_lin_r <= 0;  srdyo_r <= 0; end 
		else begin 
			if (state == 35) begin x_lin_r <= stof_y_w; srdyo_r <= 1; end
			if (srdyo_r) srdyo_r <= 0;
			if (srdyi) srdyo_r <= 0;
			end
	  end
	  endmodule
	  