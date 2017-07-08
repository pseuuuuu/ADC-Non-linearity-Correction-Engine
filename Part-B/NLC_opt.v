
module NLC_4sec_8th_order_16ch_v0 (
  input clk,
  input GlobalReset,

  output srdyo, // ufix1
  input srdyi, // ufix1

  //NLC ports for channel 15
  output signed [20:0] ch15_x_lin, // sfix21
  input signed [20:0] ch15_x_adc, // sfix21
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
  output signed [20:0] ch14_x_lin, // sfix21
  input signed [20:0] ch14_x_adc, // sfix21
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
  output signed [20:0] ch13_x_lin, // sfix21
  input signed [20:0] ch13_x_adc, // sfix21
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
  output signed [20:0] ch12_x_lin, // sfix21
  input signed [20:0] ch12_x_adc, // sfix21
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
  output signed [20:0] ch11_x_lin, // sfix21
  input signed [20:0] ch11_x_adc, // sfix21
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
  output signed [20:0] ch10_x_lin, // sfix21
  input signed [20:0] ch10_x_adc, // sfix21
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
  output signed [20:0] ch9_x_lin, // sfix21
  input signed [20:0] ch9_x_adc, // sfix21
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
  output signed [20:0] ch8_x_lin, // sfix21
  input signed [20:0] ch8_x_adc, // sfix21
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
  output signed [20:0] ch7_x_lin, // sfix21
  input signed [20:0] ch7_x_adc, // sfix21
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
  output signed [20:0] ch6_x_lin, // sfix21
  input signed [20:0] ch6_x_adc, // sfix21
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
  output signed [20:0] ch5_x_lin, // sfix21
  input signed [20:0] ch5_x_adc, // sfix21
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
  output signed [20:0] ch4_x_lin, // sfix21
  input signed [20:0] ch4_x_adc, // sfix21
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
  output signed [20:0] ch3_x_lin, // sfix21
  input signed [20:0] ch3_x_adc, // sfix21
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
  output signed [20:0] ch2_x_lin, // sfix21
  input signed [20:0] ch2_x_adc, // sfix21
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
  output signed [20:0] ch1_x_lin, // sfix21
  input signed [20:0] ch1_x_adc, // sfix21
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
  output signed [20:0] ch0_x_lin, // sfix21
  input signed [20:0] ch0_x_adc, // sfix21
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
NLC_8ch N1(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo1), 
  .srdyi(srdyi),
  .ch7_x_adc(ch15_x_adc),//NLC output 
  .ch7_x_lin(ch15_x_lin),//ADC output 
  .ch7_section_limit(ch15_section_limit),//X-value that separates the sections 
  .ch7_select_section_coefficients_stdev_4_porty(ch15_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch7_select_section_coefficients_stdev_3_porty(ch15_select_section_coefficients_stdev_3_porty), 
  .ch7_select_section_coefficients_stdev_2_porty(ch15_select_section_coefficients_stdev_2_porty), 
  .ch7_select_section_coefficients_stdev_1_porty(ch15_select_section_coefficients_stdev_1_porty), 
  .ch7_select_section_coefficients_mean_4_porty(ch15_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch7_select_section_coefficients_mean_3_porty(ch15_select_section_coefficients_mean_3_porty), 
  .ch7_select_section_coefficients_mean_2_porty(ch15_select_section_coefficients_mean_2_porty), 
  .ch7_select_section_coefficients_mean_1_porty(ch15_select_section_coefficients_mean_1_porty), 
  .ch7_select_section_coefficients_coeff_4_8_porty(ch15_select_section_coefficients_coeff_4_8_porty), 
  .ch7_select_section_coefficients_coeff_4_7_porty(ch15_select_section_coefficients_coeff_4_7_porty), 
  .ch7_select_section_coefficients_coeff_4_6_porty(ch15_select_section_coefficients_coeff_4_6_porty), 
  .ch7_select_section_coefficients_coeff_4_5_porty(ch15_select_section_coefficients_coeff_4_5_porty), 
  .ch7_select_section_coefficients_coeff_4_4_porty(ch15_select_section_coefficients_coeff_4_4_porty), 
  .ch7_select_section_coefficients_coeff_4_3_porty(ch15_select_section_coefficients_coeff_4_3_porty), 
  .ch7_select_section_coefficients_coeff_4_2_porty(ch15_select_section_coefficients_coeff_4_2_porty), 
  .ch7_select_section_coefficients_coeff_4_1_porty(ch15_select_section_coefficients_coeff_4_1_porty), 
  .ch7_select_section_coefficients_coeff_4_0_porty(ch15_select_section_coefficients_coeff_4_0_porty), 
  .ch7_select_section_coefficients_coeff_3_8_porty(ch15_select_section_coefficients_coeff_3_8_porty), 
  .ch7_select_section_coefficients_coeff_3_7_porty(ch15_select_section_coefficients_coeff_3_7_porty), 
  .ch7_select_section_coefficients_coeff_3_6_porty(ch15_select_section_coefficients_coeff_3_6_porty), 
  .ch7_select_section_coefficients_coeff_3_5_porty(ch15_select_section_coefficients_coeff_3_5_porty), 
  .ch7_select_section_coefficients_coeff_3_4_porty(ch15_select_section_coefficients_coeff_3_4_porty), 
  .ch7_select_section_coefficients_coeff_3_3_porty(ch15_select_section_coefficients_coeff_3_3_porty), 
  .ch7_select_section_coefficients_coeff_3_2_porty(ch15_select_section_coefficients_coeff_3_2_porty), 
  .ch7_select_section_coefficients_coeff_3_1_porty(ch15_select_section_coefficients_coeff_3_1_porty), 
  .ch7_select_section_coefficients_coeff_3_0_porty(ch15_select_section_coefficients_coeff_3_0_porty), 
  .ch7_select_section_coefficients_coeff_2_8_porty(ch15_select_section_coefficients_coeff_2_8_porty), 
  .ch7_select_section_coefficients_coeff_2_7_porty(ch15_select_section_coefficients_coeff_2_7_porty), 
  .ch7_select_section_coefficients_coeff_2_6_porty(ch15_select_section_coefficients_coeff_2_6_porty), 
  .ch7_select_section_coefficients_coeff_2_5_porty(ch15_select_section_coefficients_coeff_2_5_porty), 
  .ch7_select_section_coefficients_coeff_2_4_porty(ch15_select_section_coefficients_coeff_2_4_porty), 
  .ch7_select_section_coefficients_coeff_2_3_porty(ch15_select_section_coefficients_coeff_2_3_porty), 
  .ch7_select_section_coefficients_coeff_2_2_porty(ch15_select_section_coefficients_coeff_2_2_porty), 
  .ch7_select_section_coefficients_coeff_2_1_porty(ch15_select_section_coefficients_coeff_2_1_porty), 
  .ch7_select_section_coefficients_coeff_2_0_porty(ch15_select_section_coefficients_coeff_2_0_porty), 
  .ch7_select_section_coefficients_coeff_1_8_porty(ch15_select_section_coefficients_coeff_1_8_porty), 
  .ch7_select_section_coefficients_coeff_1_7_porty(ch15_select_section_coefficients_coeff_1_7_porty), 
  .ch7_select_section_coefficients_coeff_1_6_porty(ch15_select_section_coefficients_coeff_1_6_porty), 
  .ch7_select_section_coefficients_coeff_1_5_porty(ch15_select_section_coefficients_coeff_1_5_porty), 
  .ch7_select_section_coefficients_coeff_1_4_porty(ch15_select_section_coefficients_coeff_1_4_porty), 
  .ch7_select_section_coefficients_coeff_1_3_porty(ch15_select_section_coefficients_coeff_1_3_porty), 
  .ch7_select_section_coefficients_coeff_1_2_porty(ch15_select_section_coefficients_coeff_1_2_porty), 
  .ch7_select_section_coefficients_coeff_1_1_porty(ch15_select_section_coefficients_coeff_1_1_porty), 
  .ch7_select_section_coefficients_coeff_1_0_porty(ch15_select_section_coefficients_coeff_1_0_porty), 

  .ch6_x_adc(ch14_x_adc),//NLC output 
  .ch6_x_lin(ch14_x_lin),//ADC output 
  .ch6_section_limit(ch14_section_limit),//X-value that separates the sections 
  .ch6_select_section_coefficients_stdev_4_porty(ch14_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch6_select_section_coefficients_stdev_3_porty(ch14_select_section_coefficients_stdev_3_porty), 
  .ch6_select_section_coefficients_stdev_2_porty(ch14_select_section_coefficients_stdev_2_porty), 
  .ch6_select_section_coefficients_stdev_1_porty(ch14_select_section_coefficients_stdev_1_porty), 
  .ch6_select_section_coefficients_mean_4_porty(ch14_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch6_select_section_coefficients_mean_3_porty(ch14_select_section_coefficients_mean_3_porty), 
  .ch6_select_section_coefficients_mean_2_porty(ch14_select_section_coefficients_mean_2_porty), 
  .ch6_select_section_coefficients_mean_1_porty(ch14_select_section_coefficients_mean_1_porty), 
  .ch6_select_section_coefficients_coeff_4_8_porty(ch14_select_section_coefficients_coeff_4_8_porty), 
  .ch6_select_section_coefficients_coeff_4_7_porty(ch14_select_section_coefficients_coeff_4_7_porty), 
  .ch6_select_section_coefficients_coeff_4_6_porty(ch14_select_section_coefficients_coeff_4_6_porty), 
  .ch6_select_section_coefficients_coeff_4_5_porty(ch14_select_section_coefficients_coeff_4_5_porty), 
  .ch6_select_section_coefficients_coeff_4_4_porty(ch14_select_section_coefficients_coeff_4_4_porty), 
  .ch6_select_section_coefficients_coeff_4_3_porty(ch14_select_section_coefficients_coeff_4_3_porty), 
  .ch6_select_section_coefficients_coeff_4_2_porty(ch14_select_section_coefficients_coeff_4_2_porty), 
  .ch6_select_section_coefficients_coeff_4_1_porty(ch14_select_section_coefficients_coeff_4_1_porty), 
  .ch6_select_section_coefficients_coeff_4_0_porty(ch14_select_section_coefficients_coeff_4_0_porty), 
  .ch6_select_section_coefficients_coeff_3_8_porty(ch14_select_section_coefficients_coeff_3_8_porty), 
  .ch6_select_section_coefficients_coeff_3_7_porty(ch14_select_section_coefficients_coeff_3_7_porty), 
  .ch6_select_section_coefficients_coeff_3_6_porty(ch14_select_section_coefficients_coeff_3_6_porty), 
  .ch6_select_section_coefficients_coeff_3_5_porty(ch14_select_section_coefficients_coeff_3_5_porty), 
  .ch6_select_section_coefficients_coeff_3_4_porty(ch14_select_section_coefficients_coeff_3_4_porty), 
  .ch6_select_section_coefficients_coeff_3_3_porty(ch14_select_section_coefficients_coeff_3_3_porty), 
  .ch6_select_section_coefficients_coeff_3_2_porty(ch14_select_section_coefficients_coeff_3_2_porty), 
  .ch6_select_section_coefficients_coeff_3_1_porty(ch14_select_section_coefficients_coeff_3_1_porty), 
  .ch6_select_section_coefficients_coeff_3_0_porty(ch14_select_section_coefficients_coeff_3_0_porty), 
  .ch6_select_section_coefficients_coeff_2_8_porty(ch14_select_section_coefficients_coeff_2_8_porty), 
  .ch6_select_section_coefficients_coeff_2_7_porty(ch14_select_section_coefficients_coeff_2_7_porty), 
  .ch6_select_section_coefficients_coeff_2_6_porty(ch14_select_section_coefficients_coeff_2_6_porty), 
  .ch6_select_section_coefficients_coeff_2_5_porty(ch14_select_section_coefficients_coeff_2_5_porty), 
  .ch6_select_section_coefficients_coeff_2_4_porty(ch14_select_section_coefficients_coeff_2_4_porty), 
  .ch6_select_section_coefficients_coeff_2_3_porty(ch14_select_section_coefficients_coeff_2_3_porty), 
  .ch6_select_section_coefficients_coeff_2_2_porty(ch14_select_section_coefficients_coeff_2_2_porty), 
  .ch6_select_section_coefficients_coeff_2_1_porty(ch14_select_section_coefficients_coeff_2_1_porty), 
  .ch6_select_section_coefficients_coeff_2_0_porty(ch14_select_section_coefficients_coeff_2_0_porty), 
  .ch6_select_section_coefficients_coeff_1_8_porty(ch14_select_section_coefficients_coeff_1_8_porty), 
  .ch6_select_section_coefficients_coeff_1_7_porty(ch14_select_section_coefficients_coeff_1_7_porty), 
  .ch6_select_section_coefficients_coeff_1_6_porty(ch14_select_section_coefficients_coeff_1_6_porty), 
  .ch6_select_section_coefficients_coeff_1_5_porty(ch14_select_section_coefficients_coeff_1_5_porty), 
  .ch6_select_section_coefficients_coeff_1_4_porty(ch14_select_section_coefficients_coeff_1_4_porty), 
  .ch6_select_section_coefficients_coeff_1_3_porty(ch14_select_section_coefficients_coeff_1_3_porty), 
  .ch6_select_section_coefficients_coeff_1_2_porty(ch14_select_section_coefficients_coeff_1_2_porty), 
  .ch6_select_section_coefficients_coeff_1_1_porty(ch14_select_section_coefficients_coeff_1_1_porty), 
  .ch6_select_section_coefficients_coeff_1_0_porty(ch14_select_section_coefficients_coeff_1_0_porty), 

  .ch5_x_adc(ch13_x_adc),//NLC output 
  .ch5_x_lin(ch13_x_lin),//ADC output 
  .ch5_section_limit(ch13_section_limit),//X-value that separates the sections 
  .ch5_select_section_coefficients_stdev_4_porty(ch13_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch5_select_section_coefficients_stdev_3_porty(ch13_select_section_coefficients_stdev_3_porty), 
  .ch5_select_section_coefficients_stdev_2_porty(ch13_select_section_coefficients_stdev_2_porty), 
  .ch5_select_section_coefficients_stdev_1_porty(ch13_select_section_coefficients_stdev_1_porty), 
  .ch5_select_section_coefficients_mean_4_porty(ch13_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch5_select_section_coefficients_mean_3_porty(ch13_select_section_coefficients_mean_3_porty), 
  .ch5_select_section_coefficients_mean_2_porty(ch13_select_section_coefficients_mean_2_porty), 
  .ch5_select_section_coefficients_mean_1_porty(ch13_select_section_coefficients_mean_1_porty), 
  .ch5_select_section_coefficients_coeff_4_8_porty(ch13_select_section_coefficients_coeff_4_8_porty), 
  .ch5_select_section_coefficients_coeff_4_7_porty(ch13_select_section_coefficients_coeff_4_7_porty), 
  .ch5_select_section_coefficients_coeff_4_6_porty(ch13_select_section_coefficients_coeff_4_6_porty), 
  .ch5_select_section_coefficients_coeff_4_5_porty(ch13_select_section_coefficients_coeff_4_5_porty), 
  .ch5_select_section_coefficients_coeff_4_4_porty(ch13_select_section_coefficients_coeff_4_4_porty), 
  .ch5_select_section_coefficients_coeff_4_3_porty(ch13_select_section_coefficients_coeff_4_3_porty), 
  .ch5_select_section_coefficients_coeff_4_2_porty(ch13_select_section_coefficients_coeff_4_2_porty), 
  .ch5_select_section_coefficients_coeff_4_1_porty(ch13_select_section_coefficients_coeff_4_1_porty), 
  .ch5_select_section_coefficients_coeff_4_0_porty(ch13_select_section_coefficients_coeff_4_0_porty), 
  .ch5_select_section_coefficients_coeff_3_8_porty(ch13_select_section_coefficients_coeff_3_8_porty), 
  .ch5_select_section_coefficients_coeff_3_7_porty(ch13_select_section_coefficients_coeff_3_7_porty), 
  .ch5_select_section_coefficients_coeff_3_6_porty(ch13_select_section_coefficients_coeff_3_6_porty), 
  .ch5_select_section_coefficients_coeff_3_5_porty(ch13_select_section_coefficients_coeff_3_5_porty), 
  .ch5_select_section_coefficients_coeff_3_4_porty(ch13_select_section_coefficients_coeff_3_4_porty), 
  .ch5_select_section_coefficients_coeff_3_3_porty(ch13_select_section_coefficients_coeff_3_3_porty), 
  .ch5_select_section_coefficients_coeff_3_2_porty(ch13_select_section_coefficients_coeff_3_2_porty), 
  .ch5_select_section_coefficients_coeff_3_1_porty(ch13_select_section_coefficients_coeff_3_1_porty), 
  .ch5_select_section_coefficients_coeff_3_0_porty(ch13_select_section_coefficients_coeff_3_0_porty), 
  .ch5_select_section_coefficients_coeff_2_8_porty(ch13_select_section_coefficients_coeff_2_8_porty), 
  .ch5_select_section_coefficients_coeff_2_7_porty(ch13_select_section_coefficients_coeff_2_7_porty), 
  .ch5_select_section_coefficients_coeff_2_6_porty(ch13_select_section_coefficients_coeff_2_6_porty), 
  .ch5_select_section_coefficients_coeff_2_5_porty(ch13_select_section_coefficients_coeff_2_5_porty), 
  .ch5_select_section_coefficients_coeff_2_4_porty(ch13_select_section_coefficients_coeff_2_4_porty), 
  .ch5_select_section_coefficients_coeff_2_3_porty(ch13_select_section_coefficients_coeff_2_3_porty), 
  .ch5_select_section_coefficients_coeff_2_2_porty(ch13_select_section_coefficients_coeff_2_2_porty), 
  .ch5_select_section_coefficients_coeff_2_1_porty(ch13_select_section_coefficients_coeff_2_1_porty), 
  .ch5_select_section_coefficients_coeff_2_0_porty(ch13_select_section_coefficients_coeff_2_0_porty), 
  .ch5_select_section_coefficients_coeff_1_8_porty(ch13_select_section_coefficients_coeff_1_8_porty), 
  .ch5_select_section_coefficients_coeff_1_7_porty(ch13_select_section_coefficients_coeff_1_7_porty), 
  .ch5_select_section_coefficients_coeff_1_6_porty(ch13_select_section_coefficients_coeff_1_6_porty), 
  .ch5_select_section_coefficients_coeff_1_5_porty(ch13_select_section_coefficients_coeff_1_5_porty), 
  .ch5_select_section_coefficients_coeff_1_4_porty(ch13_select_section_coefficients_coeff_1_4_porty), 
  .ch5_select_section_coefficients_coeff_1_3_porty(ch13_select_section_coefficients_coeff_1_3_porty), 
  .ch5_select_section_coefficients_coeff_1_2_porty(ch13_select_section_coefficients_coeff_1_2_porty), 
  .ch5_select_section_coefficients_coeff_1_1_porty(ch13_select_section_coefficients_coeff_1_1_porty), 
  .ch5_select_section_coefficients_coeff_1_0_porty(ch13_select_section_coefficients_coeff_1_0_porty), 

  .ch4_x_adc(ch12_x_adc),//NLC output 
  .ch4_x_lin(ch12_x_lin),//ADC output 
  .ch4_section_limit(ch12_section_limit),//X-value that separates the sections 
  .ch4_select_section_coefficients_stdev_4_porty(ch12_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch4_select_section_coefficients_stdev_3_porty(ch12_select_section_coefficients_stdev_3_porty), 
  .ch4_select_section_coefficients_stdev_2_porty(ch12_select_section_coefficients_stdev_2_porty), 
  .ch4_select_section_coefficients_stdev_1_porty(ch12_select_section_coefficients_stdev_1_porty), 
  .ch4_select_section_coefficients_mean_4_porty(ch12_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch4_select_section_coefficients_mean_3_porty(ch12_select_section_coefficients_mean_3_porty), 
  .ch4_select_section_coefficients_mean_2_porty(ch12_select_section_coefficients_mean_2_porty), 
  .ch4_select_section_coefficients_mean_1_porty(ch12_select_section_coefficients_mean_1_porty), 
  .ch4_select_section_coefficients_coeff_4_8_porty(ch12_select_section_coefficients_coeff_4_8_porty), 
  .ch4_select_section_coefficients_coeff_4_7_porty(ch12_select_section_coefficients_coeff_4_7_porty), 
  .ch4_select_section_coefficients_coeff_4_6_porty(ch12_select_section_coefficients_coeff_4_6_porty), 
  .ch4_select_section_coefficients_coeff_4_5_porty(ch12_select_section_coefficients_coeff_4_5_porty), 
  .ch4_select_section_coefficients_coeff_4_4_porty(ch12_select_section_coefficients_coeff_4_4_porty), 
  .ch4_select_section_coefficients_coeff_4_3_porty(ch12_select_section_coefficients_coeff_4_3_porty), 
  .ch4_select_section_coefficients_coeff_4_2_porty(ch12_select_section_coefficients_coeff_4_2_porty), 
  .ch4_select_section_coefficients_coeff_4_1_porty(ch12_select_section_coefficients_coeff_4_1_porty), 
  .ch4_select_section_coefficients_coeff_4_0_porty(ch12_select_section_coefficients_coeff_4_0_porty), 
  .ch4_select_section_coefficients_coeff_3_8_porty(ch12_select_section_coefficients_coeff_3_8_porty), 
  .ch4_select_section_coefficients_coeff_3_7_porty(ch12_select_section_coefficients_coeff_3_7_porty), 
  .ch4_select_section_coefficients_coeff_3_6_porty(ch12_select_section_coefficients_coeff_3_6_porty), 
  .ch4_select_section_coefficients_coeff_3_5_porty(ch12_select_section_coefficients_coeff_3_5_porty), 
  .ch4_select_section_coefficients_coeff_3_4_porty(ch12_select_section_coefficients_coeff_3_4_porty), 
  .ch4_select_section_coefficients_coeff_3_3_porty(ch12_select_section_coefficients_coeff_3_3_porty), 
  .ch4_select_section_coefficients_coeff_3_2_porty(ch12_select_section_coefficients_coeff_3_2_porty), 
  .ch4_select_section_coefficients_coeff_3_1_porty(ch12_select_section_coefficients_coeff_3_1_porty), 
  .ch4_select_section_coefficients_coeff_3_0_porty(ch12_select_section_coefficients_coeff_3_0_porty), 
  .ch4_select_section_coefficients_coeff_2_8_porty(ch12_select_section_coefficients_coeff_2_8_porty), 
  .ch4_select_section_coefficients_coeff_2_7_porty(ch12_select_section_coefficients_coeff_2_7_porty), 
  .ch4_select_section_coefficients_coeff_2_6_porty(ch12_select_section_coefficients_coeff_2_6_porty), 
  .ch4_select_section_coefficients_coeff_2_5_porty(ch12_select_section_coefficients_coeff_2_5_porty), 
  .ch4_select_section_coefficients_coeff_2_4_porty(ch12_select_section_coefficients_coeff_2_4_porty), 
  .ch4_select_section_coefficients_coeff_2_3_porty(ch12_select_section_coefficients_coeff_2_3_porty), 
  .ch4_select_section_coefficients_coeff_2_2_porty(ch12_select_section_coefficients_coeff_2_2_porty), 
  .ch4_select_section_coefficients_coeff_2_1_porty(ch12_select_section_coefficients_coeff_2_1_porty), 
  .ch4_select_section_coefficients_coeff_2_0_porty(ch12_select_section_coefficients_coeff_2_0_porty), 
  .ch4_select_section_coefficients_coeff_1_8_porty(ch12_select_section_coefficients_coeff_1_8_porty), 
  .ch4_select_section_coefficients_coeff_1_7_porty(ch12_select_section_coefficients_coeff_1_7_porty), 
  .ch4_select_section_coefficients_coeff_1_6_porty(ch12_select_section_coefficients_coeff_1_6_porty), 
  .ch4_select_section_coefficients_coeff_1_5_porty(ch12_select_section_coefficients_coeff_1_5_porty), 
  .ch4_select_section_coefficients_coeff_1_4_porty(ch12_select_section_coefficients_coeff_1_4_porty), 
  .ch4_select_section_coefficients_coeff_1_3_porty(ch12_select_section_coefficients_coeff_1_3_porty), 
  .ch4_select_section_coefficients_coeff_1_2_porty(ch12_select_section_coefficients_coeff_1_2_porty), 
  .ch4_select_section_coefficients_coeff_1_1_porty(ch12_select_section_coefficients_coeff_1_1_porty), 
  .ch4_select_section_coefficients_coeff_1_0_porty(ch12_select_section_coefficients_coeff_1_0_porty), 

  .ch3_x_adc(ch11_x_adc),//NLC output 
  .ch3_x_lin(ch11_x_lin),//ADC output 
  .ch3_section_limit(ch11_section_limit),//X-value that separates the sections 
  .ch3_select_section_coefficients_stdev_4_porty(ch11_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch3_select_section_coefficients_stdev_3_porty(ch11_select_section_coefficients_stdev_3_porty), 
  .ch3_select_section_coefficients_stdev_2_porty(ch11_select_section_coefficients_stdev_2_porty), 
  .ch3_select_section_coefficients_stdev_1_porty(ch11_select_section_coefficients_stdev_1_porty), 
  .ch3_select_section_coefficients_mean_4_porty(ch11_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch3_select_section_coefficients_mean_3_porty(ch11_select_section_coefficients_mean_3_porty), 
  .ch3_select_section_coefficients_mean_2_porty(ch11_select_section_coefficients_mean_2_porty), 
  .ch3_select_section_coefficients_mean_1_porty(ch11_select_section_coefficients_mean_1_porty), 
  .ch3_select_section_coefficients_coeff_4_8_porty(ch11_select_section_coefficients_coeff_4_8_porty), 
  .ch3_select_section_coefficients_coeff_4_7_porty(ch11_select_section_coefficients_coeff_4_7_porty), 
  .ch3_select_section_coefficients_coeff_4_6_porty(ch11_select_section_coefficients_coeff_4_6_porty), 
  .ch3_select_section_coefficients_coeff_4_5_porty(ch11_select_section_coefficients_coeff_4_5_porty), 
  .ch3_select_section_coefficients_coeff_4_4_porty(ch11_select_section_coefficients_coeff_4_4_porty), 
  .ch3_select_section_coefficients_coeff_4_3_porty(ch11_select_section_coefficients_coeff_4_3_porty), 
  .ch3_select_section_coefficients_coeff_4_2_porty(ch11_select_section_coefficients_coeff_4_2_porty), 
  .ch3_select_section_coefficients_coeff_4_1_porty(ch11_select_section_coefficients_coeff_4_1_porty), 
  .ch3_select_section_coefficients_coeff_4_0_porty(ch11_select_section_coefficients_coeff_4_0_porty), 
  .ch3_select_section_coefficients_coeff_3_8_porty(ch11_select_section_coefficients_coeff_3_8_porty), 
  .ch3_select_section_coefficients_coeff_3_7_porty(ch11_select_section_coefficients_coeff_3_7_porty), 
  .ch3_select_section_coefficients_coeff_3_6_porty(ch11_select_section_coefficients_coeff_3_6_porty), 
  .ch3_select_section_coefficients_coeff_3_5_porty(ch11_select_section_coefficients_coeff_3_5_porty), 
  .ch3_select_section_coefficients_coeff_3_4_porty(ch11_select_section_coefficients_coeff_3_4_porty), 
  .ch3_select_section_coefficients_coeff_3_3_porty(ch11_select_section_coefficients_coeff_3_3_porty), 
  .ch3_select_section_coefficients_coeff_3_2_porty(ch11_select_section_coefficients_coeff_3_2_porty), 
  .ch3_select_section_coefficients_coeff_3_1_porty(ch11_select_section_coefficients_coeff_3_1_porty), 
  .ch3_select_section_coefficients_coeff_3_0_porty(ch11_select_section_coefficients_coeff_3_0_porty), 
  .ch3_select_section_coefficients_coeff_2_8_porty(ch11_select_section_coefficients_coeff_2_8_porty), 
  .ch3_select_section_coefficients_coeff_2_7_porty(ch11_select_section_coefficients_coeff_2_7_porty), 
  .ch3_select_section_coefficients_coeff_2_6_porty(ch11_select_section_coefficients_coeff_2_6_porty), 
  .ch3_select_section_coefficients_coeff_2_5_porty(ch11_select_section_coefficients_coeff_2_5_porty), 
  .ch3_select_section_coefficients_coeff_2_4_porty(ch11_select_section_coefficients_coeff_2_4_porty), 
  .ch3_select_section_coefficients_coeff_2_3_porty(ch11_select_section_coefficients_coeff_2_3_porty), 
  .ch3_select_section_coefficients_coeff_2_2_porty(ch11_select_section_coefficients_coeff_2_2_porty), 
  .ch3_select_section_coefficients_coeff_2_1_porty(ch11_select_section_coefficients_coeff_2_1_porty), 
  .ch3_select_section_coefficients_coeff_2_0_porty(ch11_select_section_coefficients_coeff_2_0_porty), 
  .ch3_select_section_coefficients_coeff_1_8_porty(ch11_select_section_coefficients_coeff_1_8_porty), 
  .ch3_select_section_coefficients_coeff_1_7_porty(ch11_select_section_coefficients_coeff_1_7_porty), 
  .ch3_select_section_coefficients_coeff_1_6_porty(ch11_select_section_coefficients_coeff_1_6_porty), 
  .ch3_select_section_coefficients_coeff_1_5_porty(ch11_select_section_coefficients_coeff_1_5_porty), 
  .ch3_select_section_coefficients_coeff_1_4_porty(ch11_select_section_coefficients_coeff_1_4_porty), 
  .ch3_select_section_coefficients_coeff_1_3_porty(ch11_select_section_coefficients_coeff_1_3_porty), 
  .ch3_select_section_coefficients_coeff_1_2_porty(ch11_select_section_coefficients_coeff_1_2_porty), 
  .ch3_select_section_coefficients_coeff_1_1_porty(ch11_select_section_coefficients_coeff_1_1_porty), 
  .ch3_select_section_coefficients_coeff_1_0_porty(ch11_select_section_coefficients_coeff_1_0_porty), 

  .ch2_x_adc(ch10_x_adc),//NLC output 
  .ch2_x_lin(ch10_x_lin),//ADC output 
  .ch2_section_limit(ch10_section_limit),//X-value that separates the sections 
  .ch2_select_section_coefficients_stdev_4_porty(ch10_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch2_select_section_coefficients_stdev_3_porty(ch10_select_section_coefficients_stdev_3_porty), 
  .ch2_select_section_coefficients_stdev_2_porty(ch10_select_section_coefficients_stdev_2_porty), 
  .ch2_select_section_coefficients_stdev_1_porty(ch10_select_section_coefficients_stdev_1_porty), 
  .ch2_select_section_coefficients_mean_4_porty(ch10_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch2_select_section_coefficients_mean_3_porty(ch10_select_section_coefficients_mean_3_porty), 
  .ch2_select_section_coefficients_mean_2_porty(ch10_select_section_coefficients_mean_2_porty), 
  .ch2_select_section_coefficients_mean_1_porty(ch10_select_section_coefficients_mean_1_porty), 
  .ch2_select_section_coefficients_coeff_4_8_porty(ch10_select_section_coefficients_coeff_4_8_porty), 
  .ch2_select_section_coefficients_coeff_4_7_porty(ch10_select_section_coefficients_coeff_4_7_porty), 
  .ch2_select_section_coefficients_coeff_4_6_porty(ch10_select_section_coefficients_coeff_4_6_porty), 
  .ch2_select_section_coefficients_coeff_4_5_porty(ch10_select_section_coefficients_coeff_4_5_porty), 
  .ch2_select_section_coefficients_coeff_4_4_porty(ch10_select_section_coefficients_coeff_4_4_porty), 
  .ch2_select_section_coefficients_coeff_4_3_porty(ch10_select_section_coefficients_coeff_4_3_porty), 
  .ch2_select_section_coefficients_coeff_4_2_porty(ch10_select_section_coefficients_coeff_4_2_porty), 
  .ch2_select_section_coefficients_coeff_4_1_porty(ch10_select_section_coefficients_coeff_4_1_porty), 
  .ch2_select_section_coefficients_coeff_4_0_porty(ch10_select_section_coefficients_coeff_4_0_porty), 
  .ch2_select_section_coefficients_coeff_3_8_porty(ch10_select_section_coefficients_coeff_3_8_porty), 
  .ch2_select_section_coefficients_coeff_3_7_porty(ch10_select_section_coefficients_coeff_3_7_porty), 
  .ch2_select_section_coefficients_coeff_3_6_porty(ch10_select_section_coefficients_coeff_3_6_porty), 
  .ch2_select_section_coefficients_coeff_3_5_porty(ch10_select_section_coefficients_coeff_3_5_porty), 
  .ch2_select_section_coefficients_coeff_3_4_porty(ch10_select_section_coefficients_coeff_3_4_porty), 
  .ch2_select_section_coefficients_coeff_3_3_porty(ch10_select_section_coefficients_coeff_3_3_porty), 
  .ch2_select_section_coefficients_coeff_3_2_porty(ch10_select_section_coefficients_coeff_3_2_porty), 
  .ch2_select_section_coefficients_coeff_3_1_porty(ch10_select_section_coefficients_coeff_3_1_porty), 
  .ch2_select_section_coefficients_coeff_3_0_porty(ch10_select_section_coefficients_coeff_3_0_porty), 
  .ch2_select_section_coefficients_coeff_2_8_porty(ch10_select_section_coefficients_coeff_2_8_porty), 
  .ch2_select_section_coefficients_coeff_2_7_porty(ch10_select_section_coefficients_coeff_2_7_porty), 
  .ch2_select_section_coefficients_coeff_2_6_porty(ch10_select_section_coefficients_coeff_2_6_porty), 
  .ch2_select_section_coefficients_coeff_2_5_porty(ch10_select_section_coefficients_coeff_2_5_porty), 
  .ch2_select_section_coefficients_coeff_2_4_porty(ch10_select_section_coefficients_coeff_2_4_porty), 
  .ch2_select_section_coefficients_coeff_2_3_porty(ch10_select_section_coefficients_coeff_2_3_porty), 
  .ch2_select_section_coefficients_coeff_2_2_porty(ch10_select_section_coefficients_coeff_2_2_porty), 
  .ch2_select_section_coefficients_coeff_2_1_porty(ch10_select_section_coefficients_coeff_2_1_porty), 
  .ch2_select_section_coefficients_coeff_2_0_porty(ch10_select_section_coefficients_coeff_2_0_porty), 
  .ch2_select_section_coefficients_coeff_1_8_porty(ch10_select_section_coefficients_coeff_1_8_porty), 
  .ch2_select_section_coefficients_coeff_1_7_porty(ch10_select_section_coefficients_coeff_1_7_porty), 
  .ch2_select_section_coefficients_coeff_1_6_porty(ch10_select_section_coefficients_coeff_1_6_porty), 
  .ch2_select_section_coefficients_coeff_1_5_porty(ch10_select_section_coefficients_coeff_1_5_porty), 
  .ch2_select_section_coefficients_coeff_1_4_porty(ch10_select_section_coefficients_coeff_1_4_porty), 
  .ch2_select_section_coefficients_coeff_1_3_porty(ch10_select_section_coefficients_coeff_1_3_porty), 
  .ch2_select_section_coefficients_coeff_1_2_porty(ch10_select_section_coefficients_coeff_1_2_porty), 
  .ch2_select_section_coefficients_coeff_1_1_porty(ch10_select_section_coefficients_coeff_1_1_porty), 
  .ch2_select_section_coefficients_coeff_1_0_porty(ch10_select_section_coefficients_coeff_1_0_porty), 

  .ch1_x_adc(ch9_x_adc),//NLC output 
  .ch1_x_lin(ch9_x_lin),//ADC output 
  .ch1_section_limit(ch9_section_limit),//X-value that separates the sections 
  .ch1_select_section_coefficients_stdev_4_porty(ch9_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch1_select_section_coefficients_stdev_3_porty(ch9_select_section_coefficients_stdev_3_porty), 
  .ch1_select_section_coefficients_stdev_2_porty(ch9_select_section_coefficients_stdev_2_porty), 
  .ch1_select_section_coefficients_stdev_1_porty(ch9_select_section_coefficients_stdev_1_porty), 
  .ch1_select_section_coefficients_mean_4_porty(ch9_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch1_select_section_coefficients_mean_3_porty(ch9_select_section_coefficients_mean_3_porty), 
  .ch1_select_section_coefficients_mean_2_porty(ch9_select_section_coefficients_mean_2_porty), 
  .ch1_select_section_coefficients_mean_1_porty(ch9_select_section_coefficients_mean_1_porty), 
  .ch1_select_section_coefficients_coeff_4_8_porty(ch9_select_section_coefficients_coeff_4_8_porty), 
  .ch1_select_section_coefficients_coeff_4_7_porty(ch9_select_section_coefficients_coeff_4_7_porty), 
  .ch1_select_section_coefficients_coeff_4_6_porty(ch9_select_section_coefficients_coeff_4_6_porty), 
  .ch1_select_section_coefficients_coeff_4_5_porty(ch9_select_section_coefficients_coeff_4_5_porty), 
  .ch1_select_section_coefficients_coeff_4_4_porty(ch9_select_section_coefficients_coeff_4_4_porty), 
  .ch1_select_section_coefficients_coeff_4_3_porty(ch9_select_section_coefficients_coeff_4_3_porty), 
  .ch1_select_section_coefficients_coeff_4_2_porty(ch9_select_section_coefficients_coeff_4_2_porty), 
  .ch1_select_section_coefficients_coeff_4_1_porty(ch9_select_section_coefficients_coeff_4_1_porty), 
  .ch1_select_section_coefficients_coeff_4_0_porty(ch9_select_section_coefficients_coeff_4_0_porty), 
  .ch1_select_section_coefficients_coeff_3_8_porty(ch9_select_section_coefficients_coeff_3_8_porty), 
  .ch1_select_section_coefficients_coeff_3_7_porty(ch9_select_section_coefficients_coeff_3_7_porty), 
  .ch1_select_section_coefficients_coeff_3_6_porty(ch9_select_section_coefficients_coeff_3_6_porty), 
  .ch1_select_section_coefficients_coeff_3_5_porty(ch9_select_section_coefficients_coeff_3_5_porty), 
  .ch1_select_section_coefficients_coeff_3_4_porty(ch9_select_section_coefficients_coeff_3_4_porty), 
  .ch1_select_section_coefficients_coeff_3_3_porty(ch9_select_section_coefficients_coeff_3_3_porty), 
  .ch1_select_section_coefficients_coeff_3_2_porty(ch9_select_section_coefficients_coeff_3_2_porty), 
  .ch1_select_section_coefficients_coeff_3_1_porty(ch9_select_section_coefficients_coeff_3_1_porty), 
  .ch1_select_section_coefficients_coeff_3_0_porty(ch9_select_section_coefficients_coeff_3_0_porty), 
  .ch1_select_section_coefficients_coeff_2_8_porty(ch9_select_section_coefficients_coeff_2_8_porty), 
  .ch1_select_section_coefficients_coeff_2_7_porty(ch9_select_section_coefficients_coeff_2_7_porty), 
  .ch1_select_section_coefficients_coeff_2_6_porty(ch9_select_section_coefficients_coeff_2_6_porty), 
  .ch1_select_section_coefficients_coeff_2_5_porty(ch9_select_section_coefficients_coeff_2_5_porty), 
  .ch1_select_section_coefficients_coeff_2_4_porty(ch9_select_section_coefficients_coeff_2_4_porty), 
  .ch1_select_section_coefficients_coeff_2_3_porty(ch9_select_section_coefficients_coeff_2_3_porty), 
  .ch1_select_section_coefficients_coeff_2_2_porty(ch9_select_section_coefficients_coeff_2_2_porty), 
  .ch1_select_section_coefficients_coeff_2_1_porty(ch9_select_section_coefficients_coeff_2_1_porty), 
  .ch1_select_section_coefficients_coeff_2_0_porty(ch9_select_section_coefficients_coeff_2_0_porty), 
  .ch1_select_section_coefficients_coeff_1_8_porty(ch9_select_section_coefficients_coeff_1_8_porty), 
  .ch1_select_section_coefficients_coeff_1_7_porty(ch9_select_section_coefficients_coeff_1_7_porty), 
  .ch1_select_section_coefficients_coeff_1_6_porty(ch9_select_section_coefficients_coeff_1_6_porty), 
  .ch1_select_section_coefficients_coeff_1_5_porty(ch9_select_section_coefficients_coeff_1_5_porty), 
  .ch1_select_section_coefficients_coeff_1_4_porty(ch9_select_section_coefficients_coeff_1_4_porty), 
  .ch1_select_section_coefficients_coeff_1_3_porty(ch9_select_section_coefficients_coeff_1_3_porty), 
  .ch1_select_section_coefficients_coeff_1_2_porty(ch9_select_section_coefficients_coeff_1_2_porty), 
  .ch1_select_section_coefficients_coeff_1_1_porty(ch9_select_section_coefficients_coeff_1_1_porty), 
  .ch1_select_section_coefficients_coeff_1_0_porty(ch9_select_section_coefficients_coeff_1_0_porty), 

  .ch0_x_adc(ch8_x_adc),//NLC output 
  .ch0_x_lin(ch8_x_lin),//ADC output 
  .ch0_section_limit(ch8_section_limit),//X-value that separates the sections 
  .ch0_select_section_coefficients_stdev_4_porty(ch8_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch0_select_section_coefficients_stdev_3_porty(ch8_select_section_coefficients_stdev_3_porty), 
  .ch0_select_section_coefficients_stdev_2_porty(ch8_select_section_coefficients_stdev_2_porty), 
  .ch0_select_section_coefficients_stdev_1_porty(ch8_select_section_coefficients_stdev_1_porty), 
  .ch0_select_section_coefficients_mean_4_porty(ch8_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch0_select_section_coefficients_mean_3_porty(ch8_select_section_coefficients_mean_3_porty), 
  .ch0_select_section_coefficients_mean_2_porty(ch8_select_section_coefficients_mean_2_porty), 
  .ch0_select_section_coefficients_mean_1_porty(ch8_select_section_coefficients_mean_1_porty), 
  .ch0_select_section_coefficients_coeff_4_8_porty(ch8_select_section_coefficients_coeff_4_8_porty), 
  .ch0_select_section_coefficients_coeff_4_7_porty(ch8_select_section_coefficients_coeff_4_7_porty), 
  .ch0_select_section_coefficients_coeff_4_6_porty(ch8_select_section_coefficients_coeff_4_6_porty), 
  .ch0_select_section_coefficients_coeff_4_5_porty(ch8_select_section_coefficients_coeff_4_5_porty), 
  .ch0_select_section_coefficients_coeff_4_4_porty(ch8_select_section_coefficients_coeff_4_4_porty), 
  .ch0_select_section_coefficients_coeff_4_3_porty(ch8_select_section_coefficients_coeff_4_3_porty), 
  .ch0_select_section_coefficients_coeff_4_2_porty(ch8_select_section_coefficients_coeff_4_2_porty), 
  .ch0_select_section_coefficients_coeff_4_1_porty(ch8_select_section_coefficients_coeff_4_1_porty), 
  .ch0_select_section_coefficients_coeff_4_0_porty(ch8_select_section_coefficients_coeff_4_0_porty), 
  .ch0_select_section_coefficients_coeff_3_8_porty(ch8_select_section_coefficients_coeff_3_8_porty), 
  .ch0_select_section_coefficients_coeff_3_7_porty(ch8_select_section_coefficients_coeff_3_7_porty), 
  .ch0_select_section_coefficients_coeff_3_6_porty(ch8_select_section_coefficients_coeff_3_6_porty), 
  .ch0_select_section_coefficients_coeff_3_5_porty(ch8_select_section_coefficients_coeff_3_5_porty), 
  .ch0_select_section_coefficients_coeff_3_4_porty(ch8_select_section_coefficients_coeff_3_4_porty), 
  .ch0_select_section_coefficients_coeff_3_3_porty(ch8_select_section_coefficients_coeff_3_3_porty), 
  .ch0_select_section_coefficients_coeff_3_2_porty(ch8_select_section_coefficients_coeff_3_2_porty), 
  .ch0_select_section_coefficients_coeff_3_1_porty(ch8_select_section_coefficients_coeff_3_1_porty), 
  .ch0_select_section_coefficients_coeff_3_0_porty(ch8_select_section_coefficients_coeff_3_0_porty), 
  .ch0_select_section_coefficients_coeff_2_8_porty(ch8_select_section_coefficients_coeff_2_8_porty), 
  .ch0_select_section_coefficients_coeff_2_7_porty(ch8_select_section_coefficients_coeff_2_7_porty), 
  .ch0_select_section_coefficients_coeff_2_6_porty(ch8_select_section_coefficients_coeff_2_6_porty), 
  .ch0_select_section_coefficients_coeff_2_5_porty(ch8_select_section_coefficients_coeff_2_5_porty), 
  .ch0_select_section_coefficients_coeff_2_4_porty(ch8_select_section_coefficients_coeff_2_4_porty), 
  .ch0_select_section_coefficients_coeff_2_3_porty(ch8_select_section_coefficients_coeff_2_3_porty), 
  .ch0_select_section_coefficients_coeff_2_2_porty(ch8_select_section_coefficients_coeff_2_2_porty), 
  .ch0_select_section_coefficients_coeff_2_1_porty(ch8_select_section_coefficients_coeff_2_1_porty), 
  .ch0_select_section_coefficients_coeff_2_0_porty(ch8_select_section_coefficients_coeff_2_0_porty), 
  .ch0_select_section_coefficients_coeff_1_8_porty(ch8_select_section_coefficients_coeff_1_8_porty), 
  .ch0_select_section_coefficients_coeff_1_7_porty(ch8_select_section_coefficients_coeff_1_7_porty), 
  .ch0_select_section_coefficients_coeff_1_6_porty(ch8_select_section_coefficients_coeff_1_6_porty), 
  .ch0_select_section_coefficients_coeff_1_5_porty(ch8_select_section_coefficients_coeff_1_5_porty), 
  .ch0_select_section_coefficients_coeff_1_4_porty(ch8_select_section_coefficients_coeff_1_4_porty), 
  .ch0_select_section_coefficients_coeff_1_3_porty(ch8_select_section_coefficients_coeff_1_3_porty), 
  .ch0_select_section_coefficients_coeff_1_2_porty(ch8_select_section_coefficients_coeff_1_2_porty), 
  .ch0_select_section_coefficients_coeff_1_1_porty(ch8_select_section_coefficients_coeff_1_1_porty), 
  .ch0_select_section_coefficients_coeff_1_0_porty(ch8_select_section_coefficients_coeff_1_0_porty)
  );

NLC_8ch N0(
  //System clock and reset
  .clk(clk),
  .GlobalReset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
   
  .srdyo(srdyo0), 
  .srdyi(srdyi),
  .ch7_x_adc(ch7_x_adc),//NLC output 
  .ch7_x_lin(ch7_x_lin),//ADC output 
  .ch7_section_limit(ch7_section_limit),//X-value that separates the sections 
  .ch7_select_section_coefficients_stdev_4_porty(ch7_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch7_select_section_coefficients_stdev_3_porty(ch7_select_section_coefficients_stdev_3_porty), 
  .ch7_select_section_coefficients_stdev_2_porty(ch7_select_section_coefficients_stdev_2_porty), 
  .ch7_select_section_coefficients_stdev_1_porty(ch7_select_section_coefficients_stdev_1_porty), 
  .ch7_select_section_coefficients_mean_4_porty(ch7_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch7_select_section_coefficients_mean_3_porty(ch7_select_section_coefficients_mean_3_porty), 
  .ch7_select_section_coefficients_mean_2_porty(ch7_select_section_coefficients_mean_2_porty), 
  .ch7_select_section_coefficients_mean_1_porty(ch7_select_section_coefficients_mean_1_porty), 
  .ch7_select_section_coefficients_coeff_4_8_porty(ch7_select_section_coefficients_coeff_4_8_porty), 
  .ch7_select_section_coefficients_coeff_4_7_porty(ch7_select_section_coefficients_coeff_4_7_porty), 
  .ch7_select_section_coefficients_coeff_4_6_porty(ch7_select_section_coefficients_coeff_4_6_porty), 
  .ch7_select_section_coefficients_coeff_4_5_porty(ch7_select_section_coefficients_coeff_4_5_porty), 
  .ch7_select_section_coefficients_coeff_4_4_porty(ch7_select_section_coefficients_coeff_4_4_porty), 
  .ch7_select_section_coefficients_coeff_4_3_porty(ch7_select_section_coefficients_coeff_4_3_porty), 
  .ch7_select_section_coefficients_coeff_4_2_porty(ch7_select_section_coefficients_coeff_4_2_porty), 
  .ch7_select_section_coefficients_coeff_4_1_porty(ch7_select_section_coefficients_coeff_4_1_porty), 
  .ch7_select_section_coefficients_coeff_4_0_porty(ch7_select_section_coefficients_coeff_4_0_porty), 
  .ch7_select_section_coefficients_coeff_3_8_porty(ch7_select_section_coefficients_coeff_3_8_porty), 
  .ch7_select_section_coefficients_coeff_3_7_porty(ch7_select_section_coefficients_coeff_3_7_porty), 
  .ch7_select_section_coefficients_coeff_3_6_porty(ch7_select_section_coefficients_coeff_3_6_porty), 
  .ch7_select_section_coefficients_coeff_3_5_porty(ch7_select_section_coefficients_coeff_3_5_porty), 
  .ch7_select_section_coefficients_coeff_3_4_porty(ch7_select_section_coefficients_coeff_3_4_porty), 
  .ch7_select_section_coefficients_coeff_3_3_porty(ch7_select_section_coefficients_coeff_3_3_porty), 
  .ch7_select_section_coefficients_coeff_3_2_porty(ch7_select_section_coefficients_coeff_3_2_porty), 
  .ch7_select_section_coefficients_coeff_3_1_porty(ch7_select_section_coefficients_coeff_3_1_porty), 
  .ch7_select_section_coefficients_coeff_3_0_porty(ch7_select_section_coefficients_coeff_3_0_porty), 
  .ch7_select_section_coefficients_coeff_2_8_porty(ch7_select_section_coefficients_coeff_2_8_porty), 
  .ch7_select_section_coefficients_coeff_2_7_porty(ch7_select_section_coefficients_coeff_2_7_porty), 
  .ch7_select_section_coefficients_coeff_2_6_porty(ch7_select_section_coefficients_coeff_2_6_porty), 
  .ch7_select_section_coefficients_coeff_2_5_porty(ch7_select_section_coefficients_coeff_2_5_porty), 
  .ch7_select_section_coefficients_coeff_2_4_porty(ch7_select_section_coefficients_coeff_2_4_porty), 
  .ch7_select_section_coefficients_coeff_2_3_porty(ch7_select_section_coefficients_coeff_2_3_porty), 
  .ch7_select_section_coefficients_coeff_2_2_porty(ch7_select_section_coefficients_coeff_2_2_porty), 
  .ch7_select_section_coefficients_coeff_2_1_porty(ch7_select_section_coefficients_coeff_2_1_porty), 
  .ch7_select_section_coefficients_coeff_2_0_porty(ch7_select_section_coefficients_coeff_2_0_porty), 
  .ch7_select_section_coefficients_coeff_1_8_porty(ch7_select_section_coefficients_coeff_1_8_porty), 
  .ch7_select_section_coefficients_coeff_1_7_porty(ch7_select_section_coefficients_coeff_1_7_porty), 
  .ch7_select_section_coefficients_coeff_1_6_porty(ch7_select_section_coefficients_coeff_1_6_porty), 
  .ch7_select_section_coefficients_coeff_1_5_porty(ch7_select_section_coefficients_coeff_1_5_porty), 
  .ch7_select_section_coefficients_coeff_1_4_porty(ch7_select_section_coefficients_coeff_1_4_porty), 
  .ch7_select_section_coefficients_coeff_1_3_porty(ch7_select_section_coefficients_coeff_1_3_porty), 
  .ch7_select_section_coefficients_coeff_1_2_porty(ch7_select_section_coefficients_coeff_1_2_porty), 
  .ch7_select_section_coefficients_coeff_1_1_porty(ch7_select_section_coefficients_coeff_1_1_porty), 
  .ch7_select_section_coefficients_coeff_1_0_porty(ch7_select_section_coefficients_coeff_1_0_porty), 

  .ch6_x_adc(ch6_x_adc),//NLC output 
  .ch6_x_lin(ch6_x_lin),//ADC output 
  .ch6_section_limit(ch6_section_limit),//X-value that separates the sections 
  .ch6_select_section_coefficients_stdev_4_porty(ch6_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch6_select_section_coefficients_stdev_3_porty(ch6_select_section_coefficients_stdev_3_porty), 
  .ch6_select_section_coefficients_stdev_2_porty(ch6_select_section_coefficients_stdev_2_porty), 
  .ch6_select_section_coefficients_stdev_1_porty(ch6_select_section_coefficients_stdev_1_porty), 
  .ch6_select_section_coefficients_mean_4_porty(ch6_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch6_select_section_coefficients_mean_3_porty(ch6_select_section_coefficients_mean_3_porty), 
  .ch6_select_section_coefficients_mean_2_porty(ch6_select_section_coefficients_mean_2_porty), 
  .ch6_select_section_coefficients_mean_1_porty(ch6_select_section_coefficients_mean_1_porty), 
  .ch6_select_section_coefficients_coeff_4_8_porty(ch6_select_section_coefficients_coeff_4_8_porty), 
  .ch6_select_section_coefficients_coeff_4_7_porty(ch6_select_section_coefficients_coeff_4_7_porty), 
  .ch6_select_section_coefficients_coeff_4_6_porty(ch6_select_section_coefficients_coeff_4_6_porty), 
  .ch6_select_section_coefficients_coeff_4_5_porty(ch6_select_section_coefficients_coeff_4_5_porty), 
  .ch6_select_section_coefficients_coeff_4_4_porty(ch6_select_section_coefficients_coeff_4_4_porty), 
  .ch6_select_section_coefficients_coeff_4_3_porty(ch6_select_section_coefficients_coeff_4_3_porty), 
  .ch6_select_section_coefficients_coeff_4_2_porty(ch6_select_section_coefficients_coeff_4_2_porty), 
  .ch6_select_section_coefficients_coeff_4_1_porty(ch6_select_section_coefficients_coeff_4_1_porty), 
  .ch6_select_section_coefficients_coeff_4_0_porty(ch6_select_section_coefficients_coeff_4_0_porty), 
  .ch6_select_section_coefficients_coeff_3_8_porty(ch6_select_section_coefficients_coeff_3_8_porty), 
  .ch6_select_section_coefficients_coeff_3_7_porty(ch6_select_section_coefficients_coeff_3_7_porty), 
  .ch6_select_section_coefficients_coeff_3_6_porty(ch6_select_section_coefficients_coeff_3_6_porty), 
  .ch6_select_section_coefficients_coeff_3_5_porty(ch6_select_section_coefficients_coeff_3_5_porty), 
  .ch6_select_section_coefficients_coeff_3_4_porty(ch6_select_section_coefficients_coeff_3_4_porty), 
  .ch6_select_section_coefficients_coeff_3_3_porty(ch6_select_section_coefficients_coeff_3_3_porty), 
  .ch6_select_section_coefficients_coeff_3_2_porty(ch6_select_section_coefficients_coeff_3_2_porty), 
  .ch6_select_section_coefficients_coeff_3_1_porty(ch6_select_section_coefficients_coeff_3_1_porty), 
  .ch6_select_section_coefficients_coeff_3_0_porty(ch6_select_section_coefficients_coeff_3_0_porty), 
  .ch6_select_section_coefficients_coeff_2_8_porty(ch6_select_section_coefficients_coeff_2_8_porty), 
  .ch6_select_section_coefficients_coeff_2_7_porty(ch6_select_section_coefficients_coeff_2_7_porty), 
  .ch6_select_section_coefficients_coeff_2_6_porty(ch6_select_section_coefficients_coeff_2_6_porty), 
  .ch6_select_section_coefficients_coeff_2_5_porty(ch6_select_section_coefficients_coeff_2_5_porty), 
  .ch6_select_section_coefficients_coeff_2_4_porty(ch6_select_section_coefficients_coeff_2_4_porty), 
  .ch6_select_section_coefficients_coeff_2_3_porty(ch6_select_section_coefficients_coeff_2_3_porty), 
  .ch6_select_section_coefficients_coeff_2_2_porty(ch6_select_section_coefficients_coeff_2_2_porty), 
  .ch6_select_section_coefficients_coeff_2_1_porty(ch6_select_section_coefficients_coeff_2_1_porty), 
  .ch6_select_section_coefficients_coeff_2_0_porty(ch6_select_section_coefficients_coeff_2_0_porty), 
  .ch6_select_section_coefficients_coeff_1_8_porty(ch6_select_section_coefficients_coeff_1_8_porty), 
  .ch6_select_section_coefficients_coeff_1_7_porty(ch6_select_section_coefficients_coeff_1_7_porty), 
  .ch6_select_section_coefficients_coeff_1_6_porty(ch6_select_section_coefficients_coeff_1_6_porty), 
  .ch6_select_section_coefficients_coeff_1_5_porty(ch6_select_section_coefficients_coeff_1_5_porty), 
  .ch6_select_section_coefficients_coeff_1_4_porty(ch6_select_section_coefficients_coeff_1_4_porty), 
  .ch6_select_section_coefficients_coeff_1_3_porty(ch6_select_section_coefficients_coeff_1_3_porty), 
  .ch6_select_section_coefficients_coeff_1_2_porty(ch6_select_section_coefficients_coeff_1_2_porty), 
  .ch6_select_section_coefficients_coeff_1_1_porty(ch6_select_section_coefficients_coeff_1_1_porty), 
  .ch6_select_section_coefficients_coeff_1_0_porty(ch6_select_section_coefficients_coeff_1_0_porty), 

  .ch5_x_adc(ch5_x_adc),//NLC output 
  .ch5_x_lin(ch5_x_lin),//ADC output 
  .ch5_section_limit(ch5_section_limit),//X-value that separates the sections 
  .ch5_select_section_coefficients_stdev_4_porty(ch5_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch5_select_section_coefficients_stdev_3_porty(ch5_select_section_coefficients_stdev_3_porty), 
  .ch5_select_section_coefficients_stdev_2_porty(ch5_select_section_coefficients_stdev_2_porty), 
  .ch5_select_section_coefficients_stdev_1_porty(ch5_select_section_coefficients_stdev_1_porty), 
  .ch5_select_section_coefficients_mean_4_porty(ch5_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch5_select_section_coefficients_mean_3_porty(ch5_select_section_coefficients_mean_3_porty), 
  .ch5_select_section_coefficients_mean_2_porty(ch5_select_section_coefficients_mean_2_porty), 
  .ch5_select_section_coefficients_mean_1_porty(ch5_select_section_coefficients_mean_1_porty), 
  .ch5_select_section_coefficients_coeff_4_8_porty(ch5_select_section_coefficients_coeff_4_8_porty), 
  .ch5_select_section_coefficients_coeff_4_7_porty(ch5_select_section_coefficients_coeff_4_7_porty), 
  .ch5_select_section_coefficients_coeff_4_6_porty(ch5_select_section_coefficients_coeff_4_6_porty), 
  .ch5_select_section_coefficients_coeff_4_5_porty(ch5_select_section_coefficients_coeff_4_5_porty), 
  .ch5_select_section_coefficients_coeff_4_4_porty(ch5_select_section_coefficients_coeff_4_4_porty), 
  .ch5_select_section_coefficients_coeff_4_3_porty(ch5_select_section_coefficients_coeff_4_3_porty), 
  .ch5_select_section_coefficients_coeff_4_2_porty(ch5_select_section_coefficients_coeff_4_2_porty), 
  .ch5_select_section_coefficients_coeff_4_1_porty(ch5_select_section_coefficients_coeff_4_1_porty), 
  .ch5_select_section_coefficients_coeff_4_0_porty(ch5_select_section_coefficients_coeff_4_0_porty), 
  .ch5_select_section_coefficients_coeff_3_8_porty(ch5_select_section_coefficients_coeff_3_8_porty), 
  .ch5_select_section_coefficients_coeff_3_7_porty(ch5_select_section_coefficients_coeff_3_7_porty), 
  .ch5_select_section_coefficients_coeff_3_6_porty(ch5_select_section_coefficients_coeff_3_6_porty), 
  .ch5_select_section_coefficients_coeff_3_5_porty(ch5_select_section_coefficients_coeff_3_5_porty), 
  .ch5_select_section_coefficients_coeff_3_4_porty(ch5_select_section_coefficients_coeff_3_4_porty), 
  .ch5_select_section_coefficients_coeff_3_3_porty(ch5_select_section_coefficients_coeff_3_3_porty), 
  .ch5_select_section_coefficients_coeff_3_2_porty(ch5_select_section_coefficients_coeff_3_2_porty), 
  .ch5_select_section_coefficients_coeff_3_1_porty(ch5_select_section_coefficients_coeff_3_1_porty), 
  .ch5_select_section_coefficients_coeff_3_0_porty(ch5_select_section_coefficients_coeff_3_0_porty), 
  .ch5_select_section_coefficients_coeff_2_8_porty(ch5_select_section_coefficients_coeff_2_8_porty), 
  .ch5_select_section_coefficients_coeff_2_7_porty(ch5_select_section_coefficients_coeff_2_7_porty), 
  .ch5_select_section_coefficients_coeff_2_6_porty(ch5_select_section_coefficients_coeff_2_6_porty), 
  .ch5_select_section_coefficients_coeff_2_5_porty(ch5_select_section_coefficients_coeff_2_5_porty), 
  .ch5_select_section_coefficients_coeff_2_4_porty(ch5_select_section_coefficients_coeff_2_4_porty), 
  .ch5_select_section_coefficients_coeff_2_3_porty(ch5_select_section_coefficients_coeff_2_3_porty), 
  .ch5_select_section_coefficients_coeff_2_2_porty(ch5_select_section_coefficients_coeff_2_2_porty), 
  .ch5_select_section_coefficients_coeff_2_1_porty(ch5_select_section_coefficients_coeff_2_1_porty), 
  .ch5_select_section_coefficients_coeff_2_0_porty(ch5_select_section_coefficients_coeff_2_0_porty), 
  .ch5_select_section_coefficients_coeff_1_8_porty(ch5_select_section_coefficients_coeff_1_8_porty), 
  .ch5_select_section_coefficients_coeff_1_7_porty(ch5_select_section_coefficients_coeff_1_7_porty), 
  .ch5_select_section_coefficients_coeff_1_6_porty(ch5_select_section_coefficients_coeff_1_6_porty), 
  .ch5_select_section_coefficients_coeff_1_5_porty(ch5_select_section_coefficients_coeff_1_5_porty), 
  .ch5_select_section_coefficients_coeff_1_4_porty(ch5_select_section_coefficients_coeff_1_4_porty), 
  .ch5_select_section_coefficients_coeff_1_3_porty(ch5_select_section_coefficients_coeff_1_3_porty), 
  .ch5_select_section_coefficients_coeff_1_2_porty(ch5_select_section_coefficients_coeff_1_2_porty), 
  .ch5_select_section_coefficients_coeff_1_1_porty(ch5_select_section_coefficients_coeff_1_1_porty), 
  .ch5_select_section_coefficients_coeff_1_0_porty(ch5_select_section_coefficients_coeff_1_0_porty), 

  .ch4_x_adc(ch4_x_adc),//NLC output 
  .ch4_x_lin(ch4_x_lin),//ADC output 
  .ch4_section_limit(ch4_section_limit),//X-value that separates the sections 
  .ch4_select_section_coefficients_stdev_4_porty(ch4_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch4_select_section_coefficients_stdev_3_porty(ch4_select_section_coefficients_stdev_3_porty), 
  .ch4_select_section_coefficients_stdev_2_porty(ch4_select_section_coefficients_stdev_2_porty), 
  .ch4_select_section_coefficients_stdev_1_porty(ch4_select_section_coefficients_stdev_1_porty), 
  .ch4_select_section_coefficients_mean_4_porty(ch4_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch4_select_section_coefficients_mean_3_porty(ch4_select_section_coefficients_mean_3_porty), 
  .ch4_select_section_coefficients_mean_2_porty(ch4_select_section_coefficients_mean_2_porty), 
  .ch4_select_section_coefficients_mean_1_porty(ch4_select_section_coefficients_mean_1_porty), 
  .ch4_select_section_coefficients_coeff_4_8_porty(ch4_select_section_coefficients_coeff_4_8_porty), 
  .ch4_select_section_coefficients_coeff_4_7_porty(ch4_select_section_coefficients_coeff_4_7_porty), 
  .ch4_select_section_coefficients_coeff_4_6_porty(ch4_select_section_coefficients_coeff_4_6_porty), 
  .ch4_select_section_coefficients_coeff_4_5_porty(ch4_select_section_coefficients_coeff_4_5_porty), 
  .ch4_select_section_coefficients_coeff_4_4_porty(ch4_select_section_coefficients_coeff_4_4_porty), 
  .ch4_select_section_coefficients_coeff_4_3_porty(ch4_select_section_coefficients_coeff_4_3_porty), 
  .ch4_select_section_coefficients_coeff_4_2_porty(ch4_select_section_coefficients_coeff_4_2_porty), 
  .ch4_select_section_coefficients_coeff_4_1_porty(ch4_select_section_coefficients_coeff_4_1_porty), 
  .ch4_select_section_coefficients_coeff_4_0_porty(ch4_select_section_coefficients_coeff_4_0_porty), 
  .ch4_select_section_coefficients_coeff_3_8_porty(ch4_select_section_coefficients_coeff_3_8_porty), 
  .ch4_select_section_coefficients_coeff_3_7_porty(ch4_select_section_coefficients_coeff_3_7_porty), 
  .ch4_select_section_coefficients_coeff_3_6_porty(ch4_select_section_coefficients_coeff_3_6_porty), 
  .ch4_select_section_coefficients_coeff_3_5_porty(ch4_select_section_coefficients_coeff_3_5_porty), 
  .ch4_select_section_coefficients_coeff_3_4_porty(ch4_select_section_coefficients_coeff_3_4_porty), 
  .ch4_select_section_coefficients_coeff_3_3_porty(ch4_select_section_coefficients_coeff_3_3_porty), 
  .ch4_select_section_coefficients_coeff_3_2_porty(ch4_select_section_coefficients_coeff_3_2_porty), 
  .ch4_select_section_coefficients_coeff_3_1_porty(ch4_select_section_coefficients_coeff_3_1_porty), 
  .ch4_select_section_coefficients_coeff_3_0_porty(ch4_select_section_coefficients_coeff_3_0_porty), 
  .ch4_select_section_coefficients_coeff_2_8_porty(ch4_select_section_coefficients_coeff_2_8_porty), 
  .ch4_select_section_coefficients_coeff_2_7_porty(ch4_select_section_coefficients_coeff_2_7_porty), 
  .ch4_select_section_coefficients_coeff_2_6_porty(ch4_select_section_coefficients_coeff_2_6_porty), 
  .ch4_select_section_coefficients_coeff_2_5_porty(ch4_select_section_coefficients_coeff_2_5_porty), 
  .ch4_select_section_coefficients_coeff_2_4_porty(ch4_select_section_coefficients_coeff_2_4_porty), 
  .ch4_select_section_coefficients_coeff_2_3_porty(ch4_select_section_coefficients_coeff_2_3_porty), 
  .ch4_select_section_coefficients_coeff_2_2_porty(ch4_select_section_coefficients_coeff_2_2_porty), 
  .ch4_select_section_coefficients_coeff_2_1_porty(ch4_select_section_coefficients_coeff_2_1_porty), 
  .ch4_select_section_coefficients_coeff_2_0_porty(ch4_select_section_coefficients_coeff_2_0_porty), 
  .ch4_select_section_coefficients_coeff_1_8_porty(ch4_select_section_coefficients_coeff_1_8_porty), 
  .ch4_select_section_coefficients_coeff_1_7_porty(ch4_select_section_coefficients_coeff_1_7_porty), 
  .ch4_select_section_coefficients_coeff_1_6_porty(ch4_select_section_coefficients_coeff_1_6_porty), 
  .ch4_select_section_coefficients_coeff_1_5_porty(ch4_select_section_coefficients_coeff_1_5_porty), 
  .ch4_select_section_coefficients_coeff_1_4_porty(ch4_select_section_coefficients_coeff_1_4_porty), 
  .ch4_select_section_coefficients_coeff_1_3_porty(ch4_select_section_coefficients_coeff_1_3_porty), 
  .ch4_select_section_coefficients_coeff_1_2_porty(ch4_select_section_coefficients_coeff_1_2_porty), 
  .ch4_select_section_coefficients_coeff_1_1_porty(ch4_select_section_coefficients_coeff_1_1_porty), 
  .ch4_select_section_coefficients_coeff_1_0_porty(ch4_select_section_coefficients_coeff_1_0_porty), 

  .ch3_x_adc(ch3_x_adc),//NLC output 
  .ch3_x_lin(ch3_x_lin),//ADC output 
  .ch3_section_limit(ch3_section_limit),//X-value that separates the sections 
  .ch3_select_section_coefficients_stdev_4_porty(ch3_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch3_select_section_coefficients_stdev_3_porty(ch3_select_section_coefficients_stdev_3_porty), 
  .ch3_select_section_coefficients_stdev_2_porty(ch3_select_section_coefficients_stdev_2_porty), 
  .ch3_select_section_coefficients_stdev_1_porty(ch3_select_section_coefficients_stdev_1_porty), 
  .ch3_select_section_coefficients_mean_4_porty(ch3_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch3_select_section_coefficients_mean_3_porty(ch3_select_section_coefficients_mean_3_porty), 
  .ch3_select_section_coefficients_mean_2_porty(ch3_select_section_coefficients_mean_2_porty), 
  .ch3_select_section_coefficients_mean_1_porty(ch3_select_section_coefficients_mean_1_porty), 
  .ch3_select_section_coefficients_coeff_4_8_porty(ch3_select_section_coefficients_coeff_4_8_porty), 
  .ch3_select_section_coefficients_coeff_4_7_porty(ch3_select_section_coefficients_coeff_4_7_porty), 
  .ch3_select_section_coefficients_coeff_4_6_porty(ch3_select_section_coefficients_coeff_4_6_porty), 
  .ch3_select_section_coefficients_coeff_4_5_porty(ch3_select_section_coefficients_coeff_4_5_porty), 
  .ch3_select_section_coefficients_coeff_4_4_porty(ch3_select_section_coefficients_coeff_4_4_porty), 
  .ch3_select_section_coefficients_coeff_4_3_porty(ch3_select_section_coefficients_coeff_4_3_porty), 
  .ch3_select_section_coefficients_coeff_4_2_porty(ch3_select_section_coefficients_coeff_4_2_porty), 
  .ch3_select_section_coefficients_coeff_4_1_porty(ch3_select_section_coefficients_coeff_4_1_porty), 
  .ch3_select_section_coefficients_coeff_4_0_porty(ch3_select_section_coefficients_coeff_4_0_porty), 
  .ch3_select_section_coefficients_coeff_3_8_porty(ch3_select_section_coefficients_coeff_3_8_porty), 
  .ch3_select_section_coefficients_coeff_3_7_porty(ch3_select_section_coefficients_coeff_3_7_porty), 
  .ch3_select_section_coefficients_coeff_3_6_porty(ch3_select_section_coefficients_coeff_3_6_porty), 
  .ch3_select_section_coefficients_coeff_3_5_porty(ch3_select_section_coefficients_coeff_3_5_porty), 
  .ch3_select_section_coefficients_coeff_3_4_porty(ch3_select_section_coefficients_coeff_3_4_porty), 
  .ch3_select_section_coefficients_coeff_3_3_porty(ch3_select_section_coefficients_coeff_3_3_porty), 
  .ch3_select_section_coefficients_coeff_3_2_porty(ch3_select_section_coefficients_coeff_3_2_porty), 
  .ch3_select_section_coefficients_coeff_3_1_porty(ch3_select_section_coefficients_coeff_3_1_porty), 
  .ch3_select_section_coefficients_coeff_3_0_porty(ch3_select_section_coefficients_coeff_3_0_porty), 
  .ch3_select_section_coefficients_coeff_2_8_porty(ch3_select_section_coefficients_coeff_2_8_porty), 
  .ch3_select_section_coefficients_coeff_2_7_porty(ch3_select_section_coefficients_coeff_2_7_porty), 
  .ch3_select_section_coefficients_coeff_2_6_porty(ch3_select_section_coefficients_coeff_2_6_porty), 
  .ch3_select_section_coefficients_coeff_2_5_porty(ch3_select_section_coefficients_coeff_2_5_porty), 
  .ch3_select_section_coefficients_coeff_2_4_porty(ch3_select_section_coefficients_coeff_2_4_porty), 
  .ch3_select_section_coefficients_coeff_2_3_porty(ch3_select_section_coefficients_coeff_2_3_porty), 
  .ch3_select_section_coefficients_coeff_2_2_porty(ch3_select_section_coefficients_coeff_2_2_porty), 
  .ch3_select_section_coefficients_coeff_2_1_porty(ch3_select_section_coefficients_coeff_2_1_porty), 
  .ch3_select_section_coefficients_coeff_2_0_porty(ch3_select_section_coefficients_coeff_2_0_porty), 
  .ch3_select_section_coefficients_coeff_1_8_porty(ch3_select_section_coefficients_coeff_1_8_porty), 
  .ch3_select_section_coefficients_coeff_1_7_porty(ch3_select_section_coefficients_coeff_1_7_porty), 
  .ch3_select_section_coefficients_coeff_1_6_porty(ch3_select_section_coefficients_coeff_1_6_porty), 
  .ch3_select_section_coefficients_coeff_1_5_porty(ch3_select_section_coefficients_coeff_1_5_porty), 
  .ch3_select_section_coefficients_coeff_1_4_porty(ch3_select_section_coefficients_coeff_1_4_porty), 
  .ch3_select_section_coefficients_coeff_1_3_porty(ch3_select_section_coefficients_coeff_1_3_porty), 
  .ch3_select_section_coefficients_coeff_1_2_porty(ch3_select_section_coefficients_coeff_1_2_porty), 
  .ch3_select_section_coefficients_coeff_1_1_porty(ch3_select_section_coefficients_coeff_1_1_porty), 
  .ch3_select_section_coefficients_coeff_1_0_porty(ch3_select_section_coefficients_coeff_1_0_porty), 

  .ch2_x_adc(ch2_x_adc),//NLC output 
  .ch2_x_lin(ch2_x_lin),//ADC output 
  .ch2_section_limit(ch2_section_limit),//X-value that separates the sections 
  .ch2_select_section_coefficients_stdev_4_porty(ch2_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch2_select_section_coefficients_stdev_3_porty(ch2_select_section_coefficients_stdev_3_porty), 
  .ch2_select_section_coefficients_stdev_2_porty(ch2_select_section_coefficients_stdev_2_porty), 
  .ch2_select_section_coefficients_stdev_1_porty(ch2_select_section_coefficients_stdev_1_porty), 
  .ch2_select_section_coefficients_mean_4_porty(ch2_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch2_select_section_coefficients_mean_3_porty(ch2_select_section_coefficients_mean_3_porty), 
  .ch2_select_section_coefficients_mean_2_porty(ch2_select_section_coefficients_mean_2_porty), 
  .ch2_select_section_coefficients_mean_1_porty(ch2_select_section_coefficients_mean_1_porty), 
  .ch2_select_section_coefficients_coeff_4_8_porty(ch2_select_section_coefficients_coeff_4_8_porty), 
  .ch2_select_section_coefficients_coeff_4_7_porty(ch2_select_section_coefficients_coeff_4_7_porty), 
  .ch2_select_section_coefficients_coeff_4_6_porty(ch2_select_section_coefficients_coeff_4_6_porty), 
  .ch2_select_section_coefficients_coeff_4_5_porty(ch2_select_section_coefficients_coeff_4_5_porty), 
  .ch2_select_section_coefficients_coeff_4_4_porty(ch2_select_section_coefficients_coeff_4_4_porty), 
  .ch2_select_section_coefficients_coeff_4_3_porty(ch2_select_section_coefficients_coeff_4_3_porty), 
  .ch2_select_section_coefficients_coeff_4_2_porty(ch2_select_section_coefficients_coeff_4_2_porty), 
  .ch2_select_section_coefficients_coeff_4_1_porty(ch2_select_section_coefficients_coeff_4_1_porty), 
  .ch2_select_section_coefficients_coeff_4_0_porty(ch2_select_section_coefficients_coeff_4_0_porty), 
  .ch2_select_section_coefficients_coeff_3_8_porty(ch2_select_section_coefficients_coeff_3_8_porty), 
  .ch2_select_section_coefficients_coeff_3_7_porty(ch2_select_section_coefficients_coeff_3_7_porty), 
  .ch2_select_section_coefficients_coeff_3_6_porty(ch2_select_section_coefficients_coeff_3_6_porty), 
  .ch2_select_section_coefficients_coeff_3_5_porty(ch2_select_section_coefficients_coeff_3_5_porty), 
  .ch2_select_section_coefficients_coeff_3_4_porty(ch2_select_section_coefficients_coeff_3_4_porty), 
  .ch2_select_section_coefficients_coeff_3_3_porty(ch2_select_section_coefficients_coeff_3_3_porty), 
  .ch2_select_section_coefficients_coeff_3_2_porty(ch2_select_section_coefficients_coeff_3_2_porty), 
  .ch2_select_section_coefficients_coeff_3_1_porty(ch2_select_section_coefficients_coeff_3_1_porty), 
  .ch2_select_section_coefficients_coeff_3_0_porty(ch2_select_section_coefficients_coeff_3_0_porty), 
  .ch2_select_section_coefficients_coeff_2_8_porty(ch2_select_section_coefficients_coeff_2_8_porty), 
  .ch2_select_section_coefficients_coeff_2_7_porty(ch2_select_section_coefficients_coeff_2_7_porty), 
  .ch2_select_section_coefficients_coeff_2_6_porty(ch2_select_section_coefficients_coeff_2_6_porty), 
  .ch2_select_section_coefficients_coeff_2_5_porty(ch2_select_section_coefficients_coeff_2_5_porty), 
  .ch2_select_section_coefficients_coeff_2_4_porty(ch2_select_section_coefficients_coeff_2_4_porty), 
  .ch2_select_section_coefficients_coeff_2_3_porty(ch2_select_section_coefficients_coeff_2_3_porty), 
  .ch2_select_section_coefficients_coeff_2_2_porty(ch2_select_section_coefficients_coeff_2_2_porty), 
  .ch2_select_section_coefficients_coeff_2_1_porty(ch2_select_section_coefficients_coeff_2_1_porty), 
  .ch2_select_section_coefficients_coeff_2_0_porty(ch2_select_section_coefficients_coeff_2_0_porty), 
  .ch2_select_section_coefficients_coeff_1_8_porty(ch2_select_section_coefficients_coeff_1_8_porty), 
  .ch2_select_section_coefficients_coeff_1_7_porty(ch2_select_section_coefficients_coeff_1_7_porty), 
  .ch2_select_section_coefficients_coeff_1_6_porty(ch2_select_section_coefficients_coeff_1_6_porty), 
  .ch2_select_section_coefficients_coeff_1_5_porty(ch2_select_section_coefficients_coeff_1_5_porty), 
  .ch2_select_section_coefficients_coeff_1_4_porty(ch2_select_section_coefficients_coeff_1_4_porty), 
  .ch2_select_section_coefficients_coeff_1_3_porty(ch2_select_section_coefficients_coeff_1_3_porty), 
  .ch2_select_section_coefficients_coeff_1_2_porty(ch2_select_section_coefficients_coeff_1_2_porty), 
  .ch2_select_section_coefficients_coeff_1_1_porty(ch2_select_section_coefficients_coeff_1_1_porty), 
  .ch2_select_section_coefficients_coeff_1_0_porty(ch2_select_section_coefficients_coeff_1_0_porty), 

  .ch1_x_adc(ch1_x_adc),//NLC output 
  .ch1_x_lin(ch1_x_lin),//ADC output 
  .ch1_section_limit(ch1_section_limit),//X-value that separates the sections 
  .ch1_select_section_coefficients_stdev_4_porty(ch1_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch1_select_section_coefficients_stdev_3_porty(ch1_select_section_coefficients_stdev_3_porty), 
  .ch1_select_section_coefficients_stdev_2_porty(ch1_select_section_coefficients_stdev_2_porty), 
  .ch1_select_section_coefficients_stdev_1_porty(ch1_select_section_coefficients_stdev_1_porty), 
  .ch1_select_section_coefficients_mean_4_porty(ch1_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch1_select_section_coefficients_mean_3_porty(ch1_select_section_coefficients_mean_3_porty), 
  .ch1_select_section_coefficients_mean_2_porty(ch1_select_section_coefficients_mean_2_porty), 
  .ch1_select_section_coefficients_mean_1_porty(ch1_select_section_coefficients_mean_1_porty), 
  .ch1_select_section_coefficients_coeff_4_8_porty(ch1_select_section_coefficients_coeff_4_8_porty), 
  .ch1_select_section_coefficients_coeff_4_7_porty(ch1_select_section_coefficients_coeff_4_7_porty), 
  .ch1_select_section_coefficients_coeff_4_6_porty(ch1_select_section_coefficients_coeff_4_6_porty), 
  .ch1_select_section_coefficients_coeff_4_5_porty(ch1_select_section_coefficients_coeff_4_5_porty), 
  .ch1_select_section_coefficients_coeff_4_4_porty(ch1_select_section_coefficients_coeff_4_4_porty), 
  .ch1_select_section_coefficients_coeff_4_3_porty(ch1_select_section_coefficients_coeff_4_3_porty), 
  .ch1_select_section_coefficients_coeff_4_2_porty(ch1_select_section_coefficients_coeff_4_2_porty), 
  .ch1_select_section_coefficients_coeff_4_1_porty(ch1_select_section_coefficients_coeff_4_1_porty), 
  .ch1_select_section_coefficients_coeff_4_0_porty(ch1_select_section_coefficients_coeff_4_0_porty), 
  .ch1_select_section_coefficients_coeff_3_8_porty(ch1_select_section_coefficients_coeff_3_8_porty), 
  .ch1_select_section_coefficients_coeff_3_7_porty(ch1_select_section_coefficients_coeff_3_7_porty), 
  .ch1_select_section_coefficients_coeff_3_6_porty(ch1_select_section_coefficients_coeff_3_6_porty), 
  .ch1_select_section_coefficients_coeff_3_5_porty(ch1_select_section_coefficients_coeff_3_5_porty), 
  .ch1_select_section_coefficients_coeff_3_4_porty(ch1_select_section_coefficients_coeff_3_4_porty), 
  .ch1_select_section_coefficients_coeff_3_3_porty(ch1_select_section_coefficients_coeff_3_3_porty), 
  .ch1_select_section_coefficients_coeff_3_2_porty(ch1_select_section_coefficients_coeff_3_2_porty), 
  .ch1_select_section_coefficients_coeff_3_1_porty(ch1_select_section_coefficients_coeff_3_1_porty), 
  .ch1_select_section_coefficients_coeff_3_0_porty(ch1_select_section_coefficients_coeff_3_0_porty), 
  .ch1_select_section_coefficients_coeff_2_8_porty(ch1_select_section_coefficients_coeff_2_8_porty), 
  .ch1_select_section_coefficients_coeff_2_7_porty(ch1_select_section_coefficients_coeff_2_7_porty), 
  .ch1_select_section_coefficients_coeff_2_6_porty(ch1_select_section_coefficients_coeff_2_6_porty), 
  .ch1_select_section_coefficients_coeff_2_5_porty(ch1_select_section_coefficients_coeff_2_5_porty), 
  .ch1_select_section_coefficients_coeff_2_4_porty(ch1_select_section_coefficients_coeff_2_4_porty), 
  .ch1_select_section_coefficients_coeff_2_3_porty(ch1_select_section_coefficients_coeff_2_3_porty), 
  .ch1_select_section_coefficients_coeff_2_2_porty(ch1_select_section_coefficients_coeff_2_2_porty), 
  .ch1_select_section_coefficients_coeff_2_1_porty(ch1_select_section_coefficients_coeff_2_1_porty), 
  .ch1_select_section_coefficients_coeff_2_0_porty(ch1_select_section_coefficients_coeff_2_0_porty), 
  .ch1_select_section_coefficients_coeff_1_8_porty(ch1_select_section_coefficients_coeff_1_8_porty), 
  .ch1_select_section_coefficients_coeff_1_7_porty(ch1_select_section_coefficients_coeff_1_7_porty), 
  .ch1_select_section_coefficients_coeff_1_6_porty(ch1_select_section_coefficients_coeff_1_6_porty), 
  .ch1_select_section_coefficients_coeff_1_5_porty(ch1_select_section_coefficients_coeff_1_5_porty), 
  .ch1_select_section_coefficients_coeff_1_4_porty(ch1_select_section_coefficients_coeff_1_4_porty), 
  .ch1_select_section_coefficients_coeff_1_3_porty(ch1_select_section_coefficients_coeff_1_3_porty), 
  .ch1_select_section_coefficients_coeff_1_2_porty(ch1_select_section_coefficients_coeff_1_2_porty), 
  .ch1_select_section_coefficients_coeff_1_1_porty(ch1_select_section_coefficients_coeff_1_1_porty), 
  .ch1_select_section_coefficients_coeff_1_0_porty(ch1_select_section_coefficients_coeff_1_0_porty), 

  .ch0_x_adc(ch0_x_adc),//NLC output 
  .ch0_x_lin(ch0_x_lin),//ADC output 
  .ch0_section_limit(ch0_section_limit),//X-value that separates the sections 
  .ch0_select_section_coefficients_stdev_4_porty(ch0_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch0_select_section_coefficients_stdev_3_porty(ch0_select_section_coefficients_stdev_3_porty), 
  .ch0_select_section_coefficients_stdev_2_porty(ch0_select_section_coefficients_stdev_2_porty), 
  .ch0_select_section_coefficients_stdev_1_porty(ch0_select_section_coefficients_stdev_1_porty), 
  .ch0_select_section_coefficients_mean_4_porty(ch0_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch0_select_section_coefficients_mean_3_porty(ch0_select_section_coefficients_mean_3_porty), 
  .ch0_select_section_coefficients_mean_2_porty(ch0_select_section_coefficients_mean_2_porty), 
  .ch0_select_section_coefficients_mean_1_porty(ch0_select_section_coefficients_mean_1_porty), 
  .ch0_select_section_coefficients_coeff_4_8_porty(ch0_select_section_coefficients_coeff_4_8_porty), 
  .ch0_select_section_coefficients_coeff_4_7_porty(ch0_select_section_coefficients_coeff_4_7_porty), 
  .ch0_select_section_coefficients_coeff_4_6_porty(ch0_select_section_coefficients_coeff_4_6_porty), 
  .ch0_select_section_coefficients_coeff_4_5_porty(ch0_select_section_coefficients_coeff_4_5_porty), 
  .ch0_select_section_coefficients_coeff_4_4_porty(ch0_select_section_coefficients_coeff_4_4_porty), 
  .ch0_select_section_coefficients_coeff_4_3_porty(ch0_select_section_coefficients_coeff_4_3_porty), 
  .ch0_select_section_coefficients_coeff_4_2_porty(ch0_select_section_coefficients_coeff_4_2_porty), 
  .ch0_select_section_coefficients_coeff_4_1_porty(ch0_select_section_coefficients_coeff_4_1_porty), 
  .ch0_select_section_coefficients_coeff_4_0_porty(ch0_select_section_coefficients_coeff_4_0_porty), 
  .ch0_select_section_coefficients_coeff_3_8_porty(ch0_select_section_coefficients_coeff_3_8_porty), 
  .ch0_select_section_coefficients_coeff_3_7_porty(ch0_select_section_coefficients_coeff_3_7_porty), 
  .ch0_select_section_coefficients_coeff_3_6_porty(ch0_select_section_coefficients_coeff_3_6_porty), 
  .ch0_select_section_coefficients_coeff_3_5_porty(ch0_select_section_coefficients_coeff_3_5_porty), 
  .ch0_select_section_coefficients_coeff_3_4_porty(ch0_select_section_coefficients_coeff_3_4_porty), 
  .ch0_select_section_coefficients_coeff_3_3_porty(ch0_select_section_coefficients_coeff_3_3_porty), 
  .ch0_select_section_coefficients_coeff_3_2_porty(ch0_select_section_coefficients_coeff_3_2_porty), 
  .ch0_select_section_coefficients_coeff_3_1_porty(ch0_select_section_coefficients_coeff_3_1_porty), 
  .ch0_select_section_coefficients_coeff_3_0_porty(ch0_select_section_coefficients_coeff_3_0_porty), 
  .ch0_select_section_coefficients_coeff_2_8_porty(ch0_select_section_coefficients_coeff_2_8_porty), 
  .ch0_select_section_coefficients_coeff_2_7_porty(ch0_select_section_coefficients_coeff_2_7_porty), 
  .ch0_select_section_coefficients_coeff_2_6_porty(ch0_select_section_coefficients_coeff_2_6_porty), 
  .ch0_select_section_coefficients_coeff_2_5_porty(ch0_select_section_coefficients_coeff_2_5_porty), 
  .ch0_select_section_coefficients_coeff_2_4_porty(ch0_select_section_coefficients_coeff_2_4_porty), 
  .ch0_select_section_coefficients_coeff_2_3_porty(ch0_select_section_coefficients_coeff_2_3_porty), 
  .ch0_select_section_coefficients_coeff_2_2_porty(ch0_select_section_coefficients_coeff_2_2_porty), 
  .ch0_select_section_coefficients_coeff_2_1_porty(ch0_select_section_coefficients_coeff_2_1_porty), 
  .ch0_select_section_coefficients_coeff_2_0_porty(ch0_select_section_coefficients_coeff_2_0_porty), 
  .ch0_select_section_coefficients_coeff_1_8_porty(ch0_select_section_coefficients_coeff_1_8_porty), 
  .ch0_select_section_coefficients_coeff_1_7_porty(ch0_select_section_coefficients_coeff_1_7_porty), 
  .ch0_select_section_coefficients_coeff_1_6_porty(ch0_select_section_coefficients_coeff_1_6_porty), 
  .ch0_select_section_coefficients_coeff_1_5_porty(ch0_select_section_coefficients_coeff_1_5_porty), 
  .ch0_select_section_coefficients_coeff_1_4_porty(ch0_select_section_coefficients_coeff_1_4_porty), 
  .ch0_select_section_coefficients_coeff_1_3_porty(ch0_select_section_coefficients_coeff_1_3_porty), 
  .ch0_select_section_coefficients_coeff_1_2_porty(ch0_select_section_coefficients_coeff_1_2_porty), 
  .ch0_select_section_coefficients_coeff_1_1_porty(ch0_select_section_coefficients_coeff_1_1_porty), 
  .ch0_select_section_coefficients_coeff_1_0_porty(ch0_select_section_coefficients_coeff_1_0_porty)
  );
	
	assign srdyo = srdyo1 | srdyo0;
endmodule

module NLC_8ch (
	clk,
	GlobalReset,
	srdyo,
	srdyi,
  ch7_x_lin, // sfix21
  ch7_x_adc, // sfix21
  ch7_section_limit, // ufix20
  ch7_select_section_coefficients_stdev_4_porty, // ufix32
  ch7_select_section_coefficients_stdev_3_porty, // ufix32
  ch7_select_section_coefficients_stdev_2_porty, // ufix32
  ch7_select_section_coefficients_stdev_1_porty, // ufix32
  ch7_select_section_coefficients_mean_4_porty, // ufix32
  ch7_select_section_coefficients_mean_3_porty, // ufix32
  ch7_select_section_coefficients_mean_2_porty, // ufix32
  ch7_select_section_coefficients_mean_1_porty, // ufix32
  ch7_select_section_coefficients_coeff_4_8_porty, // ufix32
  ch7_select_section_coefficients_coeff_4_7_porty, // ufix32
  ch7_select_section_coefficients_coeff_4_6_porty, // ufix32
  ch7_select_section_coefficients_coeff_4_5_porty, // ufix32
  ch7_select_section_coefficients_coeff_4_4_porty, // ufix32
  ch7_select_section_coefficients_coeff_4_3_porty, // ufix32
  ch7_select_section_coefficients_coeff_4_2_porty, // ufix32
  ch7_select_section_coefficients_coeff_4_1_porty, // ufix32
  ch7_select_section_coefficients_coeff_4_0_porty, // ufix32
  ch7_select_section_coefficients_coeff_3_8_porty, // ufix32
  ch7_select_section_coefficients_coeff_3_7_porty, // ufix32
  ch7_select_section_coefficients_coeff_3_6_porty, // ufix32
  ch7_select_section_coefficients_coeff_3_5_porty, // ufix32
  ch7_select_section_coefficients_coeff_3_4_porty, // ufix32
  ch7_select_section_coefficients_coeff_3_3_porty, // ufix32
  ch7_select_section_coefficients_coeff_3_2_porty, // ufix32
  ch7_select_section_coefficients_coeff_3_1_porty, // ufix32
  ch7_select_section_coefficients_coeff_3_0_porty, // ufix32
  ch7_select_section_coefficients_coeff_2_8_porty, // ufix32
  ch7_select_section_coefficients_coeff_2_7_porty, // ufix32
  ch7_select_section_coefficients_coeff_2_6_porty, // ufix32
  ch7_select_section_coefficients_coeff_2_5_porty, // ufix32
  ch7_select_section_coefficients_coeff_2_4_porty, // ufix32
  ch7_select_section_coefficients_coeff_2_3_porty, // ufix32
  ch7_select_section_coefficients_coeff_2_2_porty, // ufix32
  ch7_select_section_coefficients_coeff_2_1_porty, // ufix32
  ch7_select_section_coefficients_coeff_2_0_porty, // ufix32
  ch7_select_section_coefficients_coeff_1_8_porty, // ufix32
  ch7_select_section_coefficients_coeff_1_7_porty, // ufix32
  ch7_select_section_coefficients_coeff_1_6_porty, // ufix32
  ch7_select_section_coefficients_coeff_1_5_porty, // ufix32
  ch7_select_section_coefficients_coeff_1_4_porty, // ufix32
  ch7_select_section_coefficients_coeff_1_3_porty, // ufix32
  ch7_select_section_coefficients_coeff_1_2_porty, // ufix32
  ch7_select_section_coefficients_coeff_1_1_porty, // ufix32
  ch7_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 6
  ch6_x_lin, // sfix21
  ch6_x_adc, // sfix21
  ch6_section_limit, // ufix20
  ch6_select_section_coefficients_stdev_4_porty, // ufix32
  ch6_select_section_coefficients_stdev_3_porty, // ufix32
  ch6_select_section_coefficients_stdev_2_porty, // ufix32
  ch6_select_section_coefficients_stdev_1_porty, // ufix32
  ch6_select_section_coefficients_mean_4_porty, // ufix32
  ch6_select_section_coefficients_mean_3_porty, // ufix32
  ch6_select_section_coefficients_mean_2_porty, // ufix32
  ch6_select_section_coefficients_mean_1_porty, // ufix32
  ch6_select_section_coefficients_coeff_4_8_porty, // ufix32
  ch6_select_section_coefficients_coeff_4_7_porty, // ufix32
  ch6_select_section_coefficients_coeff_4_6_porty, // ufix32
  ch6_select_section_coefficients_coeff_4_5_porty, // ufix32
  ch6_select_section_coefficients_coeff_4_4_porty, // ufix32
  ch6_select_section_coefficients_coeff_4_3_porty, // ufix32
  ch6_select_section_coefficients_coeff_4_2_porty, // ufix32
  ch6_select_section_coefficients_coeff_4_1_porty, // ufix32
  ch6_select_section_coefficients_coeff_4_0_porty, // ufix32
  ch6_select_section_coefficients_coeff_3_8_porty, // ufix32
  ch6_select_section_coefficients_coeff_3_7_porty, // ufix32
  ch6_select_section_coefficients_coeff_3_6_porty, // ufix32
  ch6_select_section_coefficients_coeff_3_5_porty, // ufix32
  ch6_select_section_coefficients_coeff_3_4_porty, // ufix32
  ch6_select_section_coefficients_coeff_3_3_porty, // ufix32
  ch6_select_section_coefficients_coeff_3_2_porty, // ufix32
  ch6_select_section_coefficients_coeff_3_1_porty, // ufix32
  ch6_select_section_coefficients_coeff_3_0_porty, // ufix32
  ch6_select_section_coefficients_coeff_2_8_porty, // ufix32
  ch6_select_section_coefficients_coeff_2_7_porty, // ufix32
  ch6_select_section_coefficients_coeff_2_6_porty, // ufix32
  ch6_select_section_coefficients_coeff_2_5_porty, // ufix32
  ch6_select_section_coefficients_coeff_2_4_porty, // ufix32
  ch6_select_section_coefficients_coeff_2_3_porty, // ufix32
  ch6_select_section_coefficients_coeff_2_2_porty, // ufix32
  ch6_select_section_coefficients_coeff_2_1_porty, // ufix32
  ch6_select_section_coefficients_coeff_2_0_porty, // ufix32
  ch6_select_section_coefficients_coeff_1_8_porty, // ufix32
  ch6_select_section_coefficients_coeff_1_7_porty, // ufix32
  ch6_select_section_coefficients_coeff_1_6_porty, // ufix32
  ch6_select_section_coefficients_coeff_1_5_porty, // ufix32
  ch6_select_section_coefficients_coeff_1_4_porty, // ufix32
  ch6_select_section_coefficients_coeff_1_3_porty, // ufix32
  ch6_select_section_coefficients_coeff_1_2_porty, // ufix32
  ch6_select_section_coefficients_coeff_1_1_porty, // ufix32
  ch6_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 5
  ch5_x_lin, // sfix21
  ch5_x_adc, // sfix21
  ch5_section_limit, // ufix20
  ch5_select_section_coefficients_stdev_4_porty, // ufix32
  ch5_select_section_coefficients_stdev_3_porty, // ufix32
  ch5_select_section_coefficients_stdev_2_porty, // ufix32
  ch5_select_section_coefficients_stdev_1_porty, // ufix32
  ch5_select_section_coefficients_mean_4_porty, // ufix32
  ch5_select_section_coefficients_mean_3_porty, // ufix32
  ch5_select_section_coefficients_mean_2_porty, // ufix32
  ch5_select_section_coefficients_mean_1_porty, // ufix32
  ch5_select_section_coefficients_coeff_4_8_porty, // ufix32
  ch5_select_section_coefficients_coeff_4_7_porty, // ufix32
  ch5_select_section_coefficients_coeff_4_6_porty, // ufix32
  ch5_select_section_coefficients_coeff_4_5_porty, // ufix32
  ch5_select_section_coefficients_coeff_4_4_porty, // ufix32
  ch5_select_section_coefficients_coeff_4_3_porty, // ufix32
  ch5_select_section_coefficients_coeff_4_2_porty, // ufix32
  ch5_select_section_coefficients_coeff_4_1_porty, // ufix32
  ch5_select_section_coefficients_coeff_4_0_porty, // ufix32
  ch5_select_section_coefficients_coeff_3_8_porty, // ufix32
  ch5_select_section_coefficients_coeff_3_7_porty, // ufix32
  ch5_select_section_coefficients_coeff_3_6_porty, // ufix32
  ch5_select_section_coefficients_coeff_3_5_porty, // ufix32
  ch5_select_section_coefficients_coeff_3_4_porty, // ufix32
  ch5_select_section_coefficients_coeff_3_3_porty, // ufix32
  ch5_select_section_coefficients_coeff_3_2_porty, // ufix32
  ch5_select_section_coefficients_coeff_3_1_porty, // ufix32
  ch5_select_section_coefficients_coeff_3_0_porty, // ufix32
  ch5_select_section_coefficients_coeff_2_8_porty, // ufix32
  ch5_select_section_coefficients_coeff_2_7_porty, // ufix32
  ch5_select_section_coefficients_coeff_2_6_porty, // ufix32
  ch5_select_section_coefficients_coeff_2_5_porty, // ufix32
  ch5_select_section_coefficients_coeff_2_4_porty, // ufix32
  ch5_select_section_coefficients_coeff_2_3_porty, // ufix32
  ch5_select_section_coefficients_coeff_2_2_porty, // ufix32
  ch5_select_section_coefficients_coeff_2_1_porty, // ufix32
  ch5_select_section_coefficients_coeff_2_0_porty, // ufix32
  ch5_select_section_coefficients_coeff_1_8_porty, // ufix32
  ch5_select_section_coefficients_coeff_1_7_porty, // ufix32
  ch5_select_section_coefficients_coeff_1_6_porty, // ufix32
  ch5_select_section_coefficients_coeff_1_5_porty, // ufix32
  ch5_select_section_coefficients_coeff_1_4_porty, // ufix32
  ch5_select_section_coefficients_coeff_1_3_porty, // ufix32
  ch5_select_section_coefficients_coeff_1_2_porty, // ufix32
  ch5_select_section_coefficients_coeff_1_1_porty, // ufix32
  ch5_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 4
  ch4_x_lin, // sfix21
  ch4_x_adc, // sfix21
  ch4_section_limit, // ufix20
  ch4_select_section_coefficients_stdev_4_porty, // ufix32
  ch4_select_section_coefficients_stdev_3_porty, // ufix32
  ch4_select_section_coefficients_stdev_2_porty, // ufix32
  ch4_select_section_coefficients_stdev_1_porty, // ufix32
  ch4_select_section_coefficients_mean_4_porty, // ufix32
  ch4_select_section_coefficients_mean_3_porty, // ufix32
  ch4_select_section_coefficients_mean_2_porty, // ufix32
  ch4_select_section_coefficients_mean_1_porty, // ufix32
  ch4_select_section_coefficients_coeff_4_8_porty, // ufix32
  ch4_select_section_coefficients_coeff_4_7_porty, // ufix32
  ch4_select_section_coefficients_coeff_4_6_porty, // ufix32
  ch4_select_section_coefficients_coeff_4_5_porty, // ufix32
  ch4_select_section_coefficients_coeff_4_4_porty, // ufix32
  ch4_select_section_coefficients_coeff_4_3_porty, // ufix32
  ch4_select_section_coefficients_coeff_4_2_porty, // ufix32
  ch4_select_section_coefficients_coeff_4_1_porty, // ufix32
  ch4_select_section_coefficients_coeff_4_0_porty, // ufix32
  ch4_select_section_coefficients_coeff_3_8_porty, // ufix32
  ch4_select_section_coefficients_coeff_3_7_porty, // ufix32
  ch4_select_section_coefficients_coeff_3_6_porty, // ufix32
  ch4_select_section_coefficients_coeff_3_5_porty, // ufix32
  ch4_select_section_coefficients_coeff_3_4_porty, // ufix32
  ch4_select_section_coefficients_coeff_3_3_porty, // ufix32
  ch4_select_section_coefficients_coeff_3_2_porty, // ufix32
  ch4_select_section_coefficients_coeff_3_1_porty, // ufix32
  ch4_select_section_coefficients_coeff_3_0_porty, // ufix32
  ch4_select_section_coefficients_coeff_2_8_porty, // ufix32
  ch4_select_section_coefficients_coeff_2_7_porty, // ufix32
  ch4_select_section_coefficients_coeff_2_6_porty, // ufix32
  ch4_select_section_coefficients_coeff_2_5_porty, // ufix32
  ch4_select_section_coefficients_coeff_2_4_porty, // ufix32
  ch4_select_section_coefficients_coeff_2_3_porty, // ufix32
  ch4_select_section_coefficients_coeff_2_2_porty, // ufix32
  ch4_select_section_coefficients_coeff_2_1_porty, // ufix32
  ch4_select_section_coefficients_coeff_2_0_porty, // ufix32
  ch4_select_section_coefficients_coeff_1_8_porty, // ufix32
  ch4_select_section_coefficients_coeff_1_7_porty, // ufix32
  ch4_select_section_coefficients_coeff_1_6_porty, // ufix32
  ch4_select_section_coefficients_coeff_1_5_porty, // ufix32
  ch4_select_section_coefficients_coeff_1_4_porty, // ufix32
  ch4_select_section_coefficients_coeff_1_3_porty, // ufix32
  ch4_select_section_coefficients_coeff_1_2_porty, // ufix32
  ch4_select_section_coefficients_coeff_1_1_porty, // ufix32
  ch4_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 3
  ch3_x_lin, // sfix21
  ch3_x_adc, // sfix21
  ch3_section_limit, // ufix20
  ch3_select_section_coefficients_stdev_4_porty, // ufix32
  ch3_select_section_coefficients_stdev_3_porty, // ufix32
  ch3_select_section_coefficients_stdev_2_porty, // ufix32
  ch3_select_section_coefficients_stdev_1_porty, // ufix32
  ch3_select_section_coefficients_mean_4_porty, // ufix32
  ch3_select_section_coefficients_mean_3_porty, // ufix32
  ch3_select_section_coefficients_mean_2_porty, // ufix32
  ch3_select_section_coefficients_mean_1_porty, // ufix32
  ch3_select_section_coefficients_coeff_4_8_porty, // ufix32
  ch3_select_section_coefficients_coeff_4_7_porty, // ufix32
  ch3_select_section_coefficients_coeff_4_6_porty, // ufix32
  ch3_select_section_coefficients_coeff_4_5_porty, // ufix32
  ch3_select_section_coefficients_coeff_4_4_porty, // ufix32
  ch3_select_section_coefficients_coeff_4_3_porty, // ufix32
  ch3_select_section_coefficients_coeff_4_2_porty, // ufix32
  ch3_select_section_coefficients_coeff_4_1_porty, // ufix32
  ch3_select_section_coefficients_coeff_4_0_porty, // ufix32
  ch3_select_section_coefficients_coeff_3_8_porty, // ufix32
  ch3_select_section_coefficients_coeff_3_7_porty, // ufix32
  ch3_select_section_coefficients_coeff_3_6_porty, // ufix32
  ch3_select_section_coefficients_coeff_3_5_porty, // ufix32
  ch3_select_section_coefficients_coeff_3_4_porty, // ufix32
  ch3_select_section_coefficients_coeff_3_3_porty, // ufix32
  ch3_select_section_coefficients_coeff_3_2_porty, // ufix32
  ch3_select_section_coefficients_coeff_3_1_porty, // ufix32
  ch3_select_section_coefficients_coeff_3_0_porty, // ufix32
  ch3_select_section_coefficients_coeff_2_8_porty, // ufix32
  ch3_select_section_coefficients_coeff_2_7_porty, // ufix32
  ch3_select_section_coefficients_coeff_2_6_porty, // ufix32
  ch3_select_section_coefficients_coeff_2_5_porty, // ufix32
  ch3_select_section_coefficients_coeff_2_4_porty, // ufix32
  ch3_select_section_coefficients_coeff_2_3_porty, // ufix32
  ch3_select_section_coefficients_coeff_2_2_porty, // ufix32
  ch3_select_section_coefficients_coeff_2_1_porty, // ufix32
  ch3_select_section_coefficients_coeff_2_0_porty, // ufix32
  ch3_select_section_coefficients_coeff_1_8_porty, // ufix32
  ch3_select_section_coefficients_coeff_1_7_porty, // ufix32
  ch3_select_section_coefficients_coeff_1_6_porty, // ufix32
  ch3_select_section_coefficients_coeff_1_5_porty, // ufix32
  ch3_select_section_coefficients_coeff_1_4_porty, // ufix32
  ch3_select_section_coefficients_coeff_1_3_porty, // ufix32
  ch3_select_section_coefficients_coeff_1_2_porty, // ufix32
  ch3_select_section_coefficients_coeff_1_1_porty, // ufix32
  ch3_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 2
  ch2_x_lin, // sfix21
  ch2_x_adc, // sfix21
  ch2_section_limit, // ufix20
  ch2_select_section_coefficients_stdev_4_porty, // ufix32
  ch2_select_section_coefficients_stdev_3_porty, // ufix32
  ch2_select_section_coefficients_stdev_2_porty, // ufix32
  ch2_select_section_coefficients_stdev_1_porty, // ufix32
  ch2_select_section_coefficients_mean_4_porty, // ufix32
  ch2_select_section_coefficients_mean_3_porty, // ufix32
  ch2_select_section_coefficients_mean_2_porty, // ufix32
  ch2_select_section_coefficients_mean_1_porty, // ufix32
  ch2_select_section_coefficients_coeff_4_8_porty, // ufix32
  ch2_select_section_coefficients_coeff_4_7_porty, // ufix32
  ch2_select_section_coefficients_coeff_4_6_porty, // ufix32
  ch2_select_section_coefficients_coeff_4_5_porty, // ufix32
  ch2_select_section_coefficients_coeff_4_4_porty, // ufix32
  ch2_select_section_coefficients_coeff_4_3_porty, // ufix32
  ch2_select_section_coefficients_coeff_4_2_porty, // ufix32
  ch2_select_section_coefficients_coeff_4_1_porty, // ufix32
  ch2_select_section_coefficients_coeff_4_0_porty, // ufix32
  ch2_select_section_coefficients_coeff_3_8_porty, // ufix32
  ch2_select_section_coefficients_coeff_3_7_porty, // ufix32
  ch2_select_section_coefficients_coeff_3_6_porty, // ufix32
  ch2_select_section_coefficients_coeff_3_5_porty, // ufix32
  ch2_select_section_coefficients_coeff_3_4_porty, // ufix32
  ch2_select_section_coefficients_coeff_3_3_porty, // ufix32
  ch2_select_section_coefficients_coeff_3_2_porty, // ufix32
  ch2_select_section_coefficients_coeff_3_1_porty, // ufix32
  ch2_select_section_coefficients_coeff_3_0_porty, // ufix32
  ch2_select_section_coefficients_coeff_2_8_porty, // ufix32
  ch2_select_section_coefficients_coeff_2_7_porty, // ufix32
  ch2_select_section_coefficients_coeff_2_6_porty, // ufix32
  ch2_select_section_coefficients_coeff_2_5_porty, // ufix32
  ch2_select_section_coefficients_coeff_2_4_porty, // ufix32
  ch2_select_section_coefficients_coeff_2_3_porty, // ufix32
  ch2_select_section_coefficients_coeff_2_2_porty, // ufix32
  ch2_select_section_coefficients_coeff_2_1_porty, // ufix32
  ch2_select_section_coefficients_coeff_2_0_porty, // ufix32
  ch2_select_section_coefficients_coeff_1_8_porty, // ufix32
  ch2_select_section_coefficients_coeff_1_7_porty, // ufix32
  ch2_select_section_coefficients_coeff_1_6_porty, // ufix32
  ch2_select_section_coefficients_coeff_1_5_porty, // ufix32
  ch2_select_section_coefficients_coeff_1_4_porty, // ufix32
  ch2_select_section_coefficients_coeff_1_3_porty, // ufix32
  ch2_select_section_coefficients_coeff_1_2_porty, // ufix32
  ch2_select_section_coefficients_coeff_1_1_porty, // ufix32
  ch2_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 1
  ch1_x_lin, // sfix21
  ch1_x_adc, // sfix21
  ch1_section_limit, // ufix20
  ch1_select_section_coefficients_stdev_4_porty, // ufix32
  ch1_select_section_coefficients_stdev_3_porty, // ufix32
  ch1_select_section_coefficients_stdev_2_porty, // ufix32
  ch1_select_section_coefficients_stdev_1_porty, // ufix32
  ch1_select_section_coefficients_mean_4_porty, // ufix32
  ch1_select_section_coefficients_mean_3_porty, // ufix32
  ch1_select_section_coefficients_mean_2_porty, // ufix32
  ch1_select_section_coefficients_mean_1_porty, // ufix32
  ch1_select_section_coefficients_coeff_4_8_porty, // ufix32
  ch1_select_section_coefficients_coeff_4_7_porty, // ufix32
  ch1_select_section_coefficients_coeff_4_6_porty, // ufix32
  ch1_select_section_coefficients_coeff_4_5_porty, // ufix32
  ch1_select_section_coefficients_coeff_4_4_porty, // ufix32
  ch1_select_section_coefficients_coeff_4_3_porty, // ufix32
  ch1_select_section_coefficients_coeff_4_2_porty, // ufix32
  ch1_select_section_coefficients_coeff_4_1_porty, // ufix32
  ch1_select_section_coefficients_coeff_4_0_porty, // ufix32
  ch1_select_section_coefficients_coeff_3_8_porty, // ufix32
  ch1_select_section_coefficients_coeff_3_7_porty, // ufix32
  ch1_select_section_coefficients_coeff_3_6_porty, // ufix32
  ch1_select_section_coefficients_coeff_3_5_porty, // ufix32
  ch1_select_section_coefficients_coeff_3_4_porty, // ufix32
  ch1_select_section_coefficients_coeff_3_3_porty, // ufix32
  ch1_select_section_coefficients_coeff_3_2_porty, // ufix32
  ch1_select_section_coefficients_coeff_3_1_porty, // ufix32
  ch1_select_section_coefficients_coeff_3_0_porty, // ufix32
  ch1_select_section_coefficients_coeff_2_8_porty, // ufix32
  ch1_select_section_coefficients_coeff_2_7_porty, // ufix32
  ch1_select_section_coefficients_coeff_2_6_porty, // ufix32
  ch1_select_section_coefficients_coeff_2_5_porty, // ufix32
  ch1_select_section_coefficients_coeff_2_4_porty, // ufix32
  ch1_select_section_coefficients_coeff_2_3_porty, // ufix32
  ch1_select_section_coefficients_coeff_2_2_porty, // ufix32
  ch1_select_section_coefficients_coeff_2_1_porty, // ufix32
  ch1_select_section_coefficients_coeff_2_0_porty, // ufix32
  ch1_select_section_coefficients_coeff_1_8_porty, // ufix32
  ch1_select_section_coefficients_coeff_1_7_porty, // ufix32
  ch1_select_section_coefficients_coeff_1_6_porty, // ufix32
  ch1_select_section_coefficients_coeff_1_5_porty, // ufix32
  ch1_select_section_coefficients_coeff_1_4_porty, // ufix32
  ch1_select_section_coefficients_coeff_1_3_porty, // ufix32
  ch1_select_section_coefficients_coeff_1_2_porty, // ufix32
  ch1_select_section_coefficients_coeff_1_1_porty, // ufix32
  ch1_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 0
  ch0_x_lin, // sfix21
  ch0_x_adc, // sfix21
  ch0_section_limit, // ufix20
  ch0_select_section_coefficients_stdev_4_porty, // ufix32
  ch0_select_section_coefficients_stdev_3_porty, // ufix32
  ch0_select_section_coefficients_stdev_2_porty, // ufix32
  ch0_select_section_coefficients_stdev_1_porty, // ufix32
  ch0_select_section_coefficients_mean_4_porty, // ufix32
  ch0_select_section_coefficients_mean_3_porty, // ufix32
  ch0_select_section_coefficients_mean_2_porty, // ufix32
  ch0_select_section_coefficients_mean_1_porty, // ufix32
  ch0_select_section_coefficients_coeff_4_8_porty, // ufix32
  ch0_select_section_coefficients_coeff_4_7_porty, // ufix32
  ch0_select_section_coefficients_coeff_4_6_porty, // ufix32
  ch0_select_section_coefficients_coeff_4_5_porty, // ufix32
  ch0_select_section_coefficients_coeff_4_4_porty, // ufix32
  ch0_select_section_coefficients_coeff_4_3_porty, // ufix32
  ch0_select_section_coefficients_coeff_4_2_porty, // ufix32
  ch0_select_section_coefficients_coeff_4_1_porty, // ufix32
  ch0_select_section_coefficients_coeff_4_0_porty, // ufix32
  ch0_select_section_coefficients_coeff_3_8_porty, // ufix32
  ch0_select_section_coefficients_coeff_3_7_porty, // ufix32
  ch0_select_section_coefficients_coeff_3_6_porty, // ufix32
  ch0_select_section_coefficients_coeff_3_5_porty, // ufix32
  ch0_select_section_coefficients_coeff_3_4_porty, // ufix32
  ch0_select_section_coefficients_coeff_3_3_porty, // ufix32
  ch0_select_section_coefficients_coeff_3_2_porty, // ufix32
  ch0_select_section_coefficients_coeff_3_1_porty, // ufix32
  ch0_select_section_coefficients_coeff_3_0_porty, // ufix32
  ch0_select_section_coefficients_coeff_2_8_porty, // ufix32
  ch0_select_section_coefficients_coeff_2_7_porty, // ufix32
  ch0_select_section_coefficients_coeff_2_6_porty, // ufix32
  ch0_select_section_coefficients_coeff_2_5_porty, // ufix32
  ch0_select_section_coefficients_coeff_2_4_porty, // ufix32
  ch0_select_section_coefficients_coeff_2_3_porty, // ufix32
  ch0_select_section_coefficients_coeff_2_2_porty, // ufix32
  ch0_select_section_coefficients_coeff_2_1_porty, // ufix32
  ch0_select_section_coefficients_coeff_2_0_porty, // ufix32
  ch0_select_section_coefficients_coeff_1_8_porty, // ufix32
  ch0_select_section_coefficients_coeff_1_7_porty, // ufix32
  ch0_select_section_coefficients_coeff_1_6_porty, // ufix32
  ch0_select_section_coefficients_coeff_1_5_porty, // ufix32
  ch0_select_section_coefficients_coeff_1_4_porty, // ufix32
  ch0_select_section_coefficients_coeff_1_3_porty, // ufix32
  ch0_select_section_coefficients_coeff_1_2_porty, // ufix32
  ch0_select_section_coefficients_coeff_1_1_porty, // ufix32
  ch0_select_section_coefficients_coeff_1_0_porty // ufix32

);
	  input clk;
	  input GlobalReset;

	  output srdyo; // ufix1
	  input srdyi; // ufix1

	    //NLC ports for channel 7
  output signed [20:0] ch7_x_lin; // sfix21
  input signed [20:0] ch7_x_adc; // sfix21
  input  [19:0] ch7_section_limit; // ufix20
  input  [31:0] ch7_select_section_coefficients_stdev_4_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_stdev_3_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_stdev_2_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_stdev_1_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_4_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_3_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_2_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_1_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_8_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_7_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_6_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_5_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_4_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_3_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_2_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_1_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_0_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_8_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_7_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_6_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_5_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_4_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_3_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_2_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_1_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_0_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_8_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_7_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_6_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_5_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_4_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_3_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_2_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_1_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_0_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_8_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_7_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_6_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_5_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_4_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_3_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_2_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_1_porty; // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_0_porty; // ufix32

  //NLC ports for channel 6
  output signed [20:0] ch6_x_lin; // sfix21
  input signed [20:0] ch6_x_adc; // sfix21
  input  [19:0] ch6_section_limit; // ufix20
  input  [31:0] ch6_select_section_coefficients_stdev_4_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_stdev_3_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_stdev_2_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_stdev_1_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_4_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_3_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_2_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_1_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_8_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_7_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_6_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_5_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_4_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_3_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_2_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_1_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_0_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_8_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_7_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_6_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_5_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_4_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_3_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_2_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_1_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_0_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_8_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_7_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_6_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_5_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_4_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_3_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_2_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_1_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_0_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_8_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_7_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_6_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_5_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_4_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_3_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_2_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_1_porty; // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_0_porty; // ufix32

  //NLC ports for channel 5
  output signed [20:0] ch5_x_lin; // sfix21
  input signed [20:0] ch5_x_adc; // sfix21
  input  [19:0] ch5_section_limit; // ufix20
  input  [31:0] ch5_select_section_coefficients_stdev_4_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_stdev_3_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_stdev_2_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_stdev_1_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_4_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_3_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_2_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_1_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_8_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_7_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_6_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_5_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_4_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_3_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_2_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_1_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_0_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_8_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_7_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_6_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_5_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_4_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_3_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_2_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_1_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_0_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_8_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_7_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_6_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_5_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_4_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_3_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_2_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_1_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_0_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_8_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_7_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_6_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_5_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_4_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_3_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_2_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_1_porty; // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_0_porty; // ufix32

  //NLC ports for channel 4
  output signed [20:0] ch4_x_lin; // sfix21
  input signed [20:0] ch4_x_adc; // sfix21
  input  [19:0] ch4_section_limit; // ufix20
  input  [31:0] ch4_select_section_coefficients_stdev_4_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_stdev_3_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_stdev_2_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_stdev_1_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_4_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_3_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_2_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_1_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_8_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_7_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_6_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_5_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_4_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_3_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_2_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_1_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_0_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_8_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_7_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_6_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_5_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_4_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_3_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_2_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_1_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_0_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_8_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_7_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_6_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_5_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_4_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_3_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_2_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_1_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_0_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_8_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_7_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_6_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_5_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_4_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_3_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_2_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_1_porty; // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_0_porty; // ufix32

  //NLC ports for channel 3
  output signed [20:0] ch3_x_lin; // sfix21
  input signed [20:0] ch3_x_adc; // sfix21
  input  [19:0] ch3_section_limit; // ufix20
  input  [31:0] ch3_select_section_coefficients_stdev_4_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_stdev_3_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_stdev_2_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_stdev_1_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_4_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_3_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_2_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_1_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_8_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_7_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_6_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_5_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_4_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_3_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_2_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_1_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_0_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_8_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_7_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_6_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_5_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_4_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_3_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_2_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_1_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_0_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_8_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_7_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_6_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_5_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_4_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_3_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_2_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_1_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_0_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_8_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_7_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_6_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_5_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_4_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_3_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_2_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_1_porty; // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_0_porty; // ufix32

  //NLC ports for channel 2
  output signed [20:0] ch2_x_lin; // sfix21
  input signed [20:0] ch2_x_adc; // sfix21
  input  [19:0] ch2_section_limit; // ufix20
  input  [31:0] ch2_select_section_coefficients_stdev_4_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_stdev_3_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_stdev_2_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_stdev_1_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_4_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_3_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_2_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_1_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_8_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_7_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_6_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_5_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_4_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_3_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_2_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_1_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_0_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_8_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_7_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_6_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_5_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_4_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_3_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_2_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_1_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_0_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_8_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_7_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_6_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_5_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_4_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_3_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_2_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_1_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_0_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_8_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_7_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_6_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_5_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_4_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_3_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_2_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_1_porty; // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_0_porty; // ufix32

  //NLC ports for channel 1
  output signed [20:0] ch1_x_lin; // sfix21
  input signed [20:0] ch1_x_adc; // sfix21
  input  [19:0] ch1_section_limit; // ufix20
  input  [31:0] ch1_select_section_coefficients_stdev_4_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_stdev_3_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_stdev_2_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_stdev_1_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_4_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_3_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_2_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_1_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_8_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_7_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_6_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_5_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_4_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_3_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_2_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_1_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_0_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_8_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_7_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_6_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_5_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_4_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_3_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_2_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_1_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_0_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_8_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_7_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_6_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_5_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_4_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_3_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_2_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_1_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_0_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_8_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_7_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_6_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_5_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_4_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_3_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_2_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_1_porty; // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_0_porty; // ufix32

  //NLC ports for channel 0
  output signed [20:0] ch0_x_lin; // sfix21
  input signed [20:0] ch0_x_adc; // sfix21
  input  [19:0] ch0_section_limit; // ufix20
  input  [31:0] ch0_select_section_coefficients_stdev_4_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_stdev_3_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_stdev_2_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_stdev_1_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_4_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_3_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_2_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_1_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_8_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_7_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_6_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_5_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_4_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_3_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_2_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_1_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_0_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_8_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_7_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_6_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_5_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_4_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_3_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_2_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_1_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_0_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_8_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_7_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_6_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_5_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_4_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_3_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_2_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_1_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_0_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_8_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_7_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_6_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_5_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_4_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_3_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_2_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_1_porty; // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_0_porty; // ufix32

	  
	  wire signed [20:0] ch7_x_adc_w;
	  wire signed [20:0] ch6_x_adc_w;
	  wire signed [20:0] ch5_x_adc_w;
	  wire signed [20:0] ch4_x_adc_w;
	  wire signed [20:0] ch3_x_adc_w;
	  wire signed [20:0] ch2_x_adc_w;
	  wire signed [20:0] ch1_x_adc_w;
	  wire signed [20:0] ch0_x_adc_w;
	  
	  reg 	  [31:0] adder1_x_r = 0;
	  reg 	 [31:0] adder1_y_r = 0;
	  wire  [31:0] adder1_z_w;
	  wire   adder1_srdyi;
	  wire   adder1_srdyo;
	  
	  reg 	  [31:0] multiplier1_x_r = 0;
	  reg 	 [31:0] multiplier1_y_r = 0;
	  wire   [31:0] multiplier1_z_w;
	  wire   multiplier1_srdyi;
	  wire   multiplier1_srdyo;
	  
	  reg 	 [31:0] adder2_x_r = 0;
	  reg 	 [31:0] adder2_y_r = 0;
	  wire   [31:0] adder2_z_w;
	  wire   adder2_srdyi;
	  wire   adder2_srdyo;
	  
	  reg 	 [31:0] multiplier2_x_r = 0;
	  reg 	 [31:0] multiplier2_y_r = 0;
	  wire   [31:0] multiplier2_z_w;
	  wire   multiplier2_srdyi;
	  wire   multiplier2_srdyo;
	  
	  reg 	[31:0] stof_x_r = 0;
	  //reg 	 [31:0] stof_x_r;
	  wire 	 signed[20:0] stof_y_w;
	  //reg 	 [20:0] stof_y_r;
	  wire	 stof_srdyi;
	  wire	 stof_srdyo;
	  
	  wire  [31:0] ftos_y_w;
	  reg 	 signed[20:0] ftos_x_r = 0;
	  wire	 ftos_srdyi;
	  wire	 ftos_srdyo;
	  //reg [20:0] x_adc_r; 
	  
	  reg [31:0] ch7_select_section_coefficients_stdev = 0;
	  reg [31:0] ch7_select_section_coefficients_mean = 0;
	  reg [31:0] ch7_select_section_coefficients_coeff_8 = 0;
	  reg [31:0] ch7_select_section_coefficients_coeff_7 = 0;
	  reg [31:0] ch7_select_section_coefficients_coeff_6 = 0;
	  reg [31:0] ch7_select_section_coefficients_coeff_5 = 0;
	  reg [31:0] ch7_select_section_coefficients_coeff_4 = 0;
	  reg [31:0] ch7_select_section_coefficients_coeff_3 = 0;
	  reg [31:0] ch7_select_section_coefficients_coeff_2 = 0;
	  reg [31:0] ch7_select_section_coefficients_coeff_1 = 0;
	  reg [31:0] ch7_select_section_coefficients_coeff_0 = 0;
	  
	  reg [31:0] ch6_select_section_coefficients_stdev = 0;
	  reg [31:0] ch6_select_section_coefficients_mean = 0;
	  reg [31:0] ch6_select_section_coefficients_coeff_8 = 0;
	  reg [31:0] ch6_select_section_coefficients_coeff_7 = 0;
	  reg [31:0] ch6_select_section_coefficients_coeff_6 = 0;
	  reg [31:0] ch6_select_section_coefficients_coeff_5 = 0;
	  reg [31:0] ch6_select_section_coefficients_coeff_4 = 0;
	  reg [31:0] ch6_select_section_coefficients_coeff_3 = 0;
	  reg [31:0] ch6_select_section_coefficients_coeff_2 = 0;
	  reg [31:0] ch6_select_section_coefficients_coeff_1 = 0;
	  reg [31:0] ch6_select_section_coefficients_coeff_0 = 0;
	  
	  reg [31:0] ch5_select_section_coefficients_stdev = 0;
	  reg [31:0] ch5_select_section_coefficients_mean = 0;
	  reg [31:0] ch5_select_section_coefficients_coeff_8 = 0;
	  reg [31:0] ch5_select_section_coefficients_coeff_7 = 0;
	  reg [31:0] ch5_select_section_coefficients_coeff_6 = 0;
	  reg [31:0] ch5_select_section_coefficients_coeff_5 = 0;
	  reg [31:0] ch5_select_section_coefficients_coeff_4 = 0;
	  reg [31:0] ch5_select_section_coefficients_coeff_3 = 0;
	  reg [31:0] ch5_select_section_coefficients_coeff_2 = 0;
	  reg [31:0] ch5_select_section_coefficients_coeff_1 = 0;
	  reg [31:0] ch5_select_section_coefficients_coeff_0 = 0;
	  
	  reg [31:0] ch4_select_section_coefficients_stdev = 0;
	  reg [31:0] ch4_select_section_coefficients_mean = 0;
	  reg [31:0] ch4_select_section_coefficients_coeff_8 = 0;
	  reg [31:0] ch4_select_section_coefficients_coeff_7 = 0;
	  reg [31:0] ch4_select_section_coefficients_coeff_6 = 0;
	  reg [31:0] ch4_select_section_coefficients_coeff_5 = 0;
	  reg [31:0] ch4_select_section_coefficients_coeff_4 = 0;
	  reg [31:0] ch4_select_section_coefficients_coeff_3 = 0;
	  reg [31:0] ch4_select_section_coefficients_coeff_2 = 0;
	  reg [31:0] ch4_select_section_coefficients_coeff_1 = 0;
	  reg [31:0] ch4_select_section_coefficients_coeff_0 = 0;
	  
	  reg [31:0] ch3_select_section_coefficients_stdev = 0;
	  reg [31:0] ch3_select_section_coefficients_mean = 0;
	  reg [31:0] ch3_select_section_coefficients_coeff_8 = 0;
	  reg [31:0] ch3_select_section_coefficients_coeff_7 = 0;
	  reg [31:0] ch3_select_section_coefficients_coeff_6 = 0;
	  reg [31:0] ch3_select_section_coefficients_coeff_5 = 0;
	  reg [31:0] ch3_select_section_coefficients_coeff_4 = 0;
	  reg [31:0] ch3_select_section_coefficients_coeff_3 = 0;
	  reg [31:0] ch3_select_section_coefficients_coeff_2 = 0;
	  reg [31:0] ch3_select_section_coefficients_coeff_1 = 0;
	  reg [31:0] ch3_select_section_coefficients_coeff_0 = 0;
	  
	  reg [31:0] ch2_select_section_coefficients_stdev = 0;
	  reg [31:0] ch2_select_section_coefficients_mean = 0;
	  reg [31:0] ch2_select_section_coefficients_coeff_8 = 0;
	  reg [31:0] ch2_select_section_coefficients_coeff_7 = 0;
	  reg [31:0] ch2_select_section_coefficients_coeff_6 = 0;
	  reg [31:0] ch2_select_section_coefficients_coeff_5 = 0;
	  reg [31:0] ch2_select_section_coefficients_coeff_4 = 0;
	  reg [31:0] ch2_select_section_coefficients_coeff_3 = 0;
	  reg [31:0] ch2_select_section_coefficients_coeff_2 = 0;
	  reg [31:0] ch2_select_section_coefficients_coeff_1 = 0;
	  reg [31:0] ch2_select_section_coefficients_coeff_0 = 0;
	  
	  reg [31:0] ch1_select_section_coefficients_stdev = 0;
	  reg [31:0] ch1_select_section_coefficients_mean = 0;
	  reg [31:0] ch1_select_section_coefficients_coeff_8 = 0;
	  reg [31:0] ch1_select_section_coefficients_coeff_7 = 0;
	  reg [31:0] ch1_select_section_coefficients_coeff_6 = 0;
	  reg [31:0] ch1_select_section_coefficients_coeff_5 = 0;
	  reg [31:0] ch1_select_section_coefficients_coeff_4 = 0;
	  reg [31:0] ch1_select_section_coefficients_coeff_3 = 0;
	  reg [31:0] ch1_select_section_coefficients_coeff_2 = 0;
	  reg [31:0] ch1_select_section_coefficients_coeff_1 = 0;
	  reg [31:0] ch1_select_section_coefficients_coeff_0 = 0;
	  
	  reg [31:0] ch0_select_section_coefficients_stdev = 0;
	  reg [31:0] ch0_select_section_coefficients_mean = 0;
	  reg [31:0] ch0_select_section_coefficients_coeff_8 = 0;
	  reg [31:0] ch0_select_section_coefficients_coeff_7 = 0;
	  reg [31:0] ch0_select_section_coefficients_coeff_6 = 0;
	  reg [31:0] ch0_select_section_coefficients_coeff_5 = 0;
	  reg [31:0] ch0_select_section_coefficients_coeff_4 = 0;
	  reg [31:0] ch0_select_section_coefficients_coeff_3 = 0;
	  reg [31:0] ch0_select_section_coefficients_coeff_2 = 0;
	  reg [31:0] ch0_select_section_coefficients_coeff_1 = 0;
	  reg [31:0] ch0_select_section_coefficients_coeff_0 = 0;
	  
fp_to_smc_float ftos(
	.clk(clk),
	.GlobalReset(GlobalReset),
	.y_o_portx(ftos_y_w),
	.x_i(ftos_x_r),
	.srdyo_o(ftos_srdyo),
	.srdyi_i(ftos_srdyi)
);	  
	  
smc_float_to_fp stof (
	.clk(clk),
	.GlobalReset(GlobalReset),
	.x_i_porty(stof_x_r),
	.y_o(stof_y_w),
	.srdyo_o(stof_srdyo),
	.srdyi_i(stof_srdyi)
);

smc_float_adder adder1(
  .clk(clk),
  .GlobalReset(GlobalReset),
  .x_i_porty(adder1_x_r), // ufix32_En0
  .y_i_porty(adder1_y_r), // ufix32_En0
  .z_o_portx(adder1_z_w), // ufix32_En0
  .srdyo_o(adder1_srdyo), // ufix1
  .srdyi_i(adder1_srdyi) // ufix1
);

smc_float_multiplier multiplier1(
  .clk(clk),
  .GlobalReset(GlobalReset),
  .x_i_porty(multiplier1_x_r), // ufix32_En0
  .y_i_porty(multiplier1_y_r), // ufix32_En0
  .z_o_portx(multiplier1_z_w), // ufix32_En0
  .srdyo_o(multiplier1_srdyo), // ufix1
  .srdyi_i(multiplier1_srdyi) // ufix1
);

smc_float_adder adder2(
  .clk(clk),
  .GlobalReset(GlobalReset),
  .x_i_porty(adder2_x_r), // ufix32_En0
  .y_i_porty(adder2_y_r), // ufix32_En0
  .z_o_portx(adder2_z_w), // ufix32_En0
  .srdyo_o(adder2_srdyo), // ufix1
  .srdyi_i(adder2_srdyi) // ufix1
);

smc_float_multiplier multiplier2(
  .clk(clk),
  .GlobalReset(GlobalReset),
  .x_i_porty(multiplier2_x_r), // ufix32_En0
  .y_i_porty(multiplier2_y_r), // ufix32_En0
  .z_o_portx(multiplier2_z_w), // ufix32_En0
  .srdyo_o(multiplier2_srdyo), // ufix1
  .srdyi_i(multiplier2_srdyi) // ufix1
);
	  reg [5:0] state = 0;
	  reg [5:0] next_state = 0;
	  
	  
	  reg  [31:0] ch7_x_smc_r = 0;
	  reg  [31:0] ch6_x_smc_r = 0;
	  reg  [31:0] ch5_x_smc_r = 0;
	  reg  [31:0] ch4_x_smc_r = 0;
	  reg  [31:0] ch3_x_smc_r = 0;
	  reg  [31:0] ch2_x_smc_r = 0;
	  reg  [31:0] ch1_x_smc_r = 0;
	  reg  [31:0] ch0_x_smc_r = 0;
	  
	  reg [3:0] N_loop = 0;
	  	  
	  reg signed [20:0] ch7_x_lin_r = 0;
	  reg signed [20:0] ch6_x_lin_r = 0;
	  reg signed [20:0] ch5_x_lin_r = 0;
	  reg signed [20:0] ch4_x_lin_r = 0;
	  reg signed [20:0] ch3_x_lin_r = 0;
	  reg signed [20:0] ch2_x_lin_r = 0;
	  reg signed [20:0] ch1_x_lin_r = 0;
	  reg signed [20:0] ch0_x_lin_r = 0;
	  reg srdyo_r = 0;
	  assign ftos_srdyi = srdyi;
	  assign stof_srdyi = adder2_srdyo & (N_loop == 0);
	  assign adder1_srdyi = ftos_srdyo;
	  assign adder2_srdyi = multiplier2_srdyo;
	  assign multiplier1_srdyi = adder1_srdyo;
	  assign multiplier2_srdyi = multiplier1_srdyo | adder2_srdyo;
	  assign ch7_x_lin = ch7_x_lin_r;
	  assign ch6_x_lin = ch6_x_lin_r;
	  assign ch5_x_lin = ch5_x_lin_r;
	  assign ch4_x_lin = ch4_x_lin_r;
	  assign ch3_x_lin = ch3_x_lin_r;
	  assign ch2_x_lin = ch2_x_lin_r;
	  assign ch1_x_lin = ch1_x_lin_r;
	  assign ch0_x_lin = ch0_x_lin_r;
	  assign srdyo = srdyo_r;
	  assign ch7_x_adc_w = ch7_x_adc;
	  assign ch6_x_adc_w = ch6_x_adc;
	  assign ch5_x_adc_w = ch5_x_adc;
	  assign ch4_x_adc_w = ch4_x_adc;
	  assign ch3_x_adc_w = ch3_x_adc;
	  assign ch2_x_adc_w = ch2_x_adc;
	  assign ch1_x_adc_w = ch1_x_adc;
	  assign ch0_x_adc_w = ch0_x_adc;
	  //assign stof_x_w = stof_x_r;
	   //----------combinational logic------------------------
	  always @(*)
	  begin
		if ((ch7_x_adc_w <= 0) &&(-ch7_x_adc_w > ch7_section_limit)) begin
			ch7_select_section_coefficients_stdev = ch7_select_section_coefficients_stdev_1_porty;
			ch7_select_section_coefficients_mean = ch7_select_section_coefficients_mean_1_porty;
			ch7_select_section_coefficients_coeff_8 = ch7_select_section_coefficients_coeff_1_8_porty;
			ch7_select_section_coefficients_coeff_7 = ch7_select_section_coefficients_coeff_1_7_porty;
	        ch7_select_section_coefficients_coeff_6 = ch7_select_section_coefficients_coeff_1_6_porty;
	        ch7_select_section_coefficients_coeff_5 = ch7_select_section_coefficients_coeff_1_5_porty;
	        ch7_select_section_coefficients_coeff_4 = ch7_select_section_coefficients_coeff_1_4_porty;
	        ch7_select_section_coefficients_coeff_3 = ch7_select_section_coefficients_coeff_1_3_porty;
	        ch7_select_section_coefficients_coeff_2 = ch7_select_section_coefficients_coeff_1_2_porty;
	        ch7_select_section_coefficients_coeff_1 = ch7_select_section_coefficients_coeff_1_1_porty;
	        ch7_select_section_coefficients_coeff_0 = ch7_select_section_coefficients_coeff_1_0_porty;
		end
		else if (ch7_x_adc_w <= 0)  begin
				ch7_select_section_coefficients_stdev = ch7_select_section_coefficients_stdev_2_porty;
				ch7_select_section_coefficients_mean = ch7_select_section_coefficients_mean_2_porty;
				ch7_select_section_coefficients_coeff_8 = ch7_select_section_coefficients_coeff_2_8_porty;
				ch7_select_section_coefficients_coeff_7 = ch7_select_section_coefficients_coeff_2_7_porty;
				ch7_select_section_coefficients_coeff_6 = ch7_select_section_coefficients_coeff_2_6_porty;
				ch7_select_section_coefficients_coeff_5 = ch7_select_section_coefficients_coeff_2_5_porty;
				ch7_select_section_coefficients_coeff_4 = ch7_select_section_coefficients_coeff_2_4_porty;
				ch7_select_section_coefficients_coeff_3 = ch7_select_section_coefficients_coeff_2_3_porty;
				ch7_select_section_coefficients_coeff_2 = ch7_select_section_coefficients_coeff_2_2_porty;
				ch7_select_section_coefficients_coeff_1 = ch7_select_section_coefficients_coeff_2_1_porty;
				ch7_select_section_coefficients_coeff_0 = ch7_select_section_coefficients_coeff_2_0_porty;
			end
			else if (ch7_section_limit >= ch7_x_adc_w) begin
				ch7_select_section_coefficients_stdev = ch7_select_section_coefficients_stdev_3_porty;
				ch7_select_section_coefficients_mean = ch7_select_section_coefficients_mean_3_porty;
				ch7_select_section_coefficients_coeff_8 = ch7_select_section_coefficients_coeff_3_8_porty;
				ch7_select_section_coefficients_coeff_7 = ch7_select_section_coefficients_coeff_3_7_porty;
				ch7_select_section_coefficients_coeff_6 = ch7_select_section_coefficients_coeff_3_6_porty;
				ch7_select_section_coefficients_coeff_5 = ch7_select_section_coefficients_coeff_3_5_porty;
				ch7_select_section_coefficients_coeff_4 = ch7_select_section_coefficients_coeff_3_4_porty;
				ch7_select_section_coefficients_coeff_3 = ch7_select_section_coefficients_coeff_3_3_porty;
				ch7_select_section_coefficients_coeff_2 = ch7_select_section_coefficients_coeff_3_2_porty;
				ch7_select_section_coefficients_coeff_1 = ch7_select_section_coefficients_coeff_3_1_porty;
				ch7_select_section_coefficients_coeff_0 = ch7_select_section_coefficients_coeff_3_0_porty;
				end
				else begin
				ch7_select_section_coefficients_stdev = ch7_select_section_coefficients_stdev_4_porty;
				ch7_select_section_coefficients_mean = ch7_select_section_coefficients_mean_4_porty;
				ch7_select_section_coefficients_coeff_8 = ch7_select_section_coefficients_coeff_4_8_porty;
				ch7_select_section_coefficients_coeff_7 = ch7_select_section_coefficients_coeff_4_7_porty;
				ch7_select_section_coefficients_coeff_6 = ch7_select_section_coefficients_coeff_4_6_porty;
				ch7_select_section_coefficients_coeff_5 = ch7_select_section_coefficients_coeff_4_5_porty;
				ch7_select_section_coefficients_coeff_4 = ch7_select_section_coefficients_coeff_4_4_porty;
				ch7_select_section_coefficients_coeff_3 = ch7_select_section_coefficients_coeff_4_3_porty;
				ch7_select_section_coefficients_coeff_2 = ch7_select_section_coefficients_coeff_4_2_porty;
				ch7_select_section_coefficients_coeff_1 = ch7_select_section_coefficients_coeff_4_1_porty;
				ch7_select_section_coefficients_coeff_0 = ch7_select_section_coefficients_coeff_4_0_porty;
				end
	  end
	  
	  always @(*)
	  begin
		if ((ch6_x_adc_w <= 0) &&(-ch6_x_adc_w > ch6_section_limit)) begin
			ch6_select_section_coefficients_stdev = ch6_select_section_coefficients_stdev_1_porty;
			ch6_select_section_coefficients_mean = ch6_select_section_coefficients_mean_1_porty;
			ch6_select_section_coefficients_coeff_8 = ch6_select_section_coefficients_coeff_1_8_porty;
			ch6_select_section_coefficients_coeff_7 = ch6_select_section_coefficients_coeff_1_7_porty;
	        ch6_select_section_coefficients_coeff_6 = ch6_select_section_coefficients_coeff_1_6_porty;
	        ch6_select_section_coefficients_coeff_5 = ch6_select_section_coefficients_coeff_1_5_porty;
	        ch6_select_section_coefficients_coeff_4 = ch6_select_section_coefficients_coeff_1_4_porty;
	        ch6_select_section_coefficients_coeff_3 = ch6_select_section_coefficients_coeff_1_3_porty;
	        ch6_select_section_coefficients_coeff_2 = ch6_select_section_coefficients_coeff_1_2_porty;
	        ch6_select_section_coefficients_coeff_1 = ch6_select_section_coefficients_coeff_1_1_porty;
	        ch6_select_section_coefficients_coeff_0 = ch6_select_section_coefficients_coeff_1_0_porty;
		end
		else if (ch6_x_adc_w <= 0)  begin
				ch6_select_section_coefficients_stdev = ch6_select_section_coefficients_stdev_2_porty;
				ch6_select_section_coefficients_mean = ch6_select_section_coefficients_mean_2_porty;
				ch6_select_section_coefficients_coeff_8 = ch6_select_section_coefficients_coeff_2_8_porty;
				ch6_select_section_coefficients_coeff_7 = ch6_select_section_coefficients_coeff_2_7_porty;
				ch6_select_section_coefficients_coeff_6 = ch6_select_section_coefficients_coeff_2_6_porty;
				ch6_select_section_coefficients_coeff_5 = ch6_select_section_coefficients_coeff_2_5_porty;
				ch6_select_section_coefficients_coeff_4 = ch6_select_section_coefficients_coeff_2_4_porty;
				ch6_select_section_coefficients_coeff_3 = ch6_select_section_coefficients_coeff_2_3_porty;
				ch6_select_section_coefficients_coeff_2 = ch6_select_section_coefficients_coeff_2_2_porty;
				ch6_select_section_coefficients_coeff_1 = ch6_select_section_coefficients_coeff_2_1_porty;
				ch6_select_section_coefficients_coeff_0 = ch6_select_section_coefficients_coeff_2_0_porty;
			end
			else if (ch6_section_limit >= ch6_x_adc_w) begin
				ch6_select_section_coefficients_stdev = ch6_select_section_coefficients_stdev_3_porty;
				ch6_select_section_coefficients_mean = ch6_select_section_coefficients_mean_3_porty;
				ch6_select_section_coefficients_coeff_8 = ch6_select_section_coefficients_coeff_3_8_porty;
				ch6_select_section_coefficients_coeff_7 = ch6_select_section_coefficients_coeff_3_7_porty;
				ch6_select_section_coefficients_coeff_6 = ch6_select_section_coefficients_coeff_3_6_porty;
				ch6_select_section_coefficients_coeff_5 = ch6_select_section_coefficients_coeff_3_5_porty;
				ch6_select_section_coefficients_coeff_4 = ch6_select_section_coefficients_coeff_3_4_porty;
				ch6_select_section_coefficients_coeff_3 = ch6_select_section_coefficients_coeff_3_3_porty;
				ch6_select_section_coefficients_coeff_2 = ch6_select_section_coefficients_coeff_3_2_porty;
				ch6_select_section_coefficients_coeff_1 = ch6_select_section_coefficients_coeff_3_1_porty;
				ch6_select_section_coefficients_coeff_0 = ch6_select_section_coefficients_coeff_3_0_porty;
				end
				else begin
				ch6_select_section_coefficients_stdev = ch6_select_section_coefficients_stdev_4_porty;
				ch6_select_section_coefficients_mean = ch6_select_section_coefficients_mean_4_porty;
				ch6_select_section_coefficients_coeff_8 = ch6_select_section_coefficients_coeff_4_8_porty;
				ch6_select_section_coefficients_coeff_7 = ch6_select_section_coefficients_coeff_4_7_porty;
				ch6_select_section_coefficients_coeff_6 = ch6_select_section_coefficients_coeff_4_6_porty;
				ch6_select_section_coefficients_coeff_5 = ch6_select_section_coefficients_coeff_4_5_porty;
				ch6_select_section_coefficients_coeff_4 = ch6_select_section_coefficients_coeff_4_4_porty;
				ch6_select_section_coefficients_coeff_3 = ch6_select_section_coefficients_coeff_4_3_porty;
				ch6_select_section_coefficients_coeff_2 = ch6_select_section_coefficients_coeff_4_2_porty;
				ch6_select_section_coefficients_coeff_1 = ch6_select_section_coefficients_coeff_4_1_porty;
				ch6_select_section_coefficients_coeff_0 = ch6_select_section_coefficients_coeff_4_0_porty;
				end
	  end
	  
	  always @(*)
	  begin
		if ((ch5_x_adc_w <= 0) &&(-ch5_x_adc_w > ch5_section_limit)) begin
			ch5_select_section_coefficients_stdev = ch5_select_section_coefficients_stdev_1_porty;
			ch5_select_section_coefficients_mean = ch5_select_section_coefficients_mean_1_porty;
			ch5_select_section_coefficients_coeff_8 = ch5_select_section_coefficients_coeff_1_8_porty;
			ch5_select_section_coefficients_coeff_7 = ch5_select_section_coefficients_coeff_1_7_porty;
	        ch5_select_section_coefficients_coeff_6 = ch5_select_section_coefficients_coeff_1_6_porty;
	        ch5_select_section_coefficients_coeff_5 = ch5_select_section_coefficients_coeff_1_5_porty;
	        ch5_select_section_coefficients_coeff_4 = ch5_select_section_coefficients_coeff_1_4_porty;
	        ch5_select_section_coefficients_coeff_3 = ch5_select_section_coefficients_coeff_1_3_porty;
	        ch5_select_section_coefficients_coeff_2 = ch5_select_section_coefficients_coeff_1_2_porty;
	        ch5_select_section_coefficients_coeff_1 = ch5_select_section_coefficients_coeff_1_1_porty;
	        ch5_select_section_coefficients_coeff_0 = ch5_select_section_coefficients_coeff_1_0_porty;
		end
		else if (ch5_x_adc_w <= 0)  begin
				ch5_select_section_coefficients_stdev = ch5_select_section_coefficients_stdev_2_porty;
				ch5_select_section_coefficients_mean = ch5_select_section_coefficients_mean_2_porty;
				ch5_select_section_coefficients_coeff_8 = ch5_select_section_coefficients_coeff_2_8_porty;
				ch5_select_section_coefficients_coeff_7 = ch5_select_section_coefficients_coeff_2_7_porty;
				ch5_select_section_coefficients_coeff_6 = ch5_select_section_coefficients_coeff_2_6_porty;
				ch5_select_section_coefficients_coeff_5 = ch5_select_section_coefficients_coeff_2_5_porty;
				ch5_select_section_coefficients_coeff_4 = ch5_select_section_coefficients_coeff_2_4_porty;
				ch5_select_section_coefficients_coeff_3 = ch5_select_section_coefficients_coeff_2_3_porty;
				ch5_select_section_coefficients_coeff_2 = ch5_select_section_coefficients_coeff_2_2_porty;
				ch5_select_section_coefficients_coeff_1 = ch5_select_section_coefficients_coeff_2_1_porty;
				ch5_select_section_coefficients_coeff_0 = ch5_select_section_coefficients_coeff_2_0_porty;
			end
			else if (ch5_section_limit >= ch5_x_adc_w) begin
				ch5_select_section_coefficients_stdev = ch5_select_section_coefficients_stdev_3_porty;
				ch5_select_section_coefficients_mean = ch5_select_section_coefficients_mean_3_porty;
				ch5_select_section_coefficients_coeff_8 = ch5_select_section_coefficients_coeff_3_8_porty;
				ch5_select_section_coefficients_coeff_7 = ch5_select_section_coefficients_coeff_3_7_porty;
				ch5_select_section_coefficients_coeff_6 = ch5_select_section_coefficients_coeff_3_6_porty;
				ch5_select_section_coefficients_coeff_5 = ch5_select_section_coefficients_coeff_3_5_porty;
				ch5_select_section_coefficients_coeff_4 = ch5_select_section_coefficients_coeff_3_4_porty;
				ch5_select_section_coefficients_coeff_3 = ch5_select_section_coefficients_coeff_3_3_porty;
				ch5_select_section_coefficients_coeff_2 = ch5_select_section_coefficients_coeff_3_2_porty;
				ch5_select_section_coefficients_coeff_1 = ch5_select_section_coefficients_coeff_3_1_porty;
				ch5_select_section_coefficients_coeff_0 = ch5_select_section_coefficients_coeff_3_0_porty;
				end
				else begin
				ch5_select_section_coefficients_stdev = ch5_select_section_coefficients_stdev_4_porty;
				ch5_select_section_coefficients_mean = ch5_select_section_coefficients_mean_4_porty;
				ch5_select_section_coefficients_coeff_8 = ch5_select_section_coefficients_coeff_4_8_porty;
				ch5_select_section_coefficients_coeff_7 = ch5_select_section_coefficients_coeff_4_7_porty;
				ch5_select_section_coefficients_coeff_6 = ch5_select_section_coefficients_coeff_4_6_porty;
				ch5_select_section_coefficients_coeff_5 = ch5_select_section_coefficients_coeff_4_5_porty;
				ch5_select_section_coefficients_coeff_4 = ch5_select_section_coefficients_coeff_4_4_porty;
				ch5_select_section_coefficients_coeff_3 = ch5_select_section_coefficients_coeff_4_3_porty;
				ch5_select_section_coefficients_coeff_2 = ch5_select_section_coefficients_coeff_4_2_porty;
				ch5_select_section_coefficients_coeff_1 = ch5_select_section_coefficients_coeff_4_1_porty;
				ch5_select_section_coefficients_coeff_0 = ch5_select_section_coefficients_coeff_4_0_porty;
				end
	  end
	  
	  always @(*)
	  begin
		if ((ch4_x_adc_w <= 0) &&(-ch4_x_adc_w > ch4_section_limit)) begin
			ch4_select_section_coefficients_stdev = ch4_select_section_coefficients_stdev_1_porty;
			ch4_select_section_coefficients_mean = ch4_select_section_coefficients_mean_1_porty;
			ch4_select_section_coefficients_coeff_8 = ch4_select_section_coefficients_coeff_1_8_porty;
			ch4_select_section_coefficients_coeff_7 = ch4_select_section_coefficients_coeff_1_7_porty;
	        ch4_select_section_coefficients_coeff_6 = ch4_select_section_coefficients_coeff_1_6_porty;
	        ch4_select_section_coefficients_coeff_5 = ch4_select_section_coefficients_coeff_1_5_porty;
	        ch4_select_section_coefficients_coeff_4 = ch4_select_section_coefficients_coeff_1_4_porty;
	        ch4_select_section_coefficients_coeff_3 = ch4_select_section_coefficients_coeff_1_3_porty;
	        ch4_select_section_coefficients_coeff_2 = ch4_select_section_coefficients_coeff_1_2_porty;
	        ch4_select_section_coefficients_coeff_1 = ch4_select_section_coefficients_coeff_1_1_porty;
	        ch4_select_section_coefficients_coeff_0 = ch4_select_section_coefficients_coeff_1_0_porty;
		end
		else if (ch4_x_adc_w <= 0)  begin
				ch4_select_section_coefficients_stdev = ch4_select_section_coefficients_stdev_2_porty;
				ch4_select_section_coefficients_mean = ch4_select_section_coefficients_mean_2_porty;
				ch4_select_section_coefficients_coeff_8 = ch4_select_section_coefficients_coeff_2_8_porty;
				ch4_select_section_coefficients_coeff_7 = ch4_select_section_coefficients_coeff_2_7_porty;
				ch4_select_section_coefficients_coeff_6 = ch4_select_section_coefficients_coeff_2_6_porty;
				ch4_select_section_coefficients_coeff_5 = ch4_select_section_coefficients_coeff_2_5_porty;
				ch4_select_section_coefficients_coeff_4 = ch4_select_section_coefficients_coeff_2_4_porty;
				ch4_select_section_coefficients_coeff_3 = ch4_select_section_coefficients_coeff_2_3_porty;
				ch4_select_section_coefficients_coeff_2 = ch4_select_section_coefficients_coeff_2_2_porty;
				ch4_select_section_coefficients_coeff_1 = ch4_select_section_coefficients_coeff_2_1_porty;
				ch4_select_section_coefficients_coeff_0 = ch4_select_section_coefficients_coeff_2_0_porty;
			end
			else if (ch4_section_limit >= ch4_x_adc_w) begin
				ch4_select_section_coefficients_stdev = ch4_select_section_coefficients_stdev_3_porty;
				ch4_select_section_coefficients_mean = ch4_select_section_coefficients_mean_3_porty;
				ch4_select_section_coefficients_coeff_8 = ch4_select_section_coefficients_coeff_3_8_porty;
				ch4_select_section_coefficients_coeff_7 = ch4_select_section_coefficients_coeff_3_7_porty;
				ch4_select_section_coefficients_coeff_6 = ch4_select_section_coefficients_coeff_3_6_porty;
				ch4_select_section_coefficients_coeff_5 = ch4_select_section_coefficients_coeff_3_5_porty;
				ch4_select_section_coefficients_coeff_4 = ch4_select_section_coefficients_coeff_3_4_porty;
				ch4_select_section_coefficients_coeff_3 = ch4_select_section_coefficients_coeff_3_3_porty;
				ch4_select_section_coefficients_coeff_2 = ch4_select_section_coefficients_coeff_3_2_porty;
				ch4_select_section_coefficients_coeff_1 = ch4_select_section_coefficients_coeff_3_1_porty;
				ch4_select_section_coefficients_coeff_0 = ch4_select_section_coefficients_coeff_3_0_porty;
				end
				else begin
				ch4_select_section_coefficients_stdev = ch4_select_section_coefficients_stdev_4_porty;
				ch4_select_section_coefficients_mean = ch4_select_section_coefficients_mean_4_porty;
				ch4_select_section_coefficients_coeff_8 = ch4_select_section_coefficients_coeff_4_8_porty;
				ch4_select_section_coefficients_coeff_7 = ch4_select_section_coefficients_coeff_4_7_porty;
				ch4_select_section_coefficients_coeff_6 = ch4_select_section_coefficients_coeff_4_6_porty;
				ch4_select_section_coefficients_coeff_5 = ch4_select_section_coefficients_coeff_4_5_porty;
				ch4_select_section_coefficients_coeff_4 = ch4_select_section_coefficients_coeff_4_4_porty;
				ch4_select_section_coefficients_coeff_3 = ch4_select_section_coefficients_coeff_4_3_porty;
				ch4_select_section_coefficients_coeff_2 = ch4_select_section_coefficients_coeff_4_2_porty;
				ch4_select_section_coefficients_coeff_1 = ch4_select_section_coefficients_coeff_4_1_porty;
				ch4_select_section_coefficients_coeff_0 = ch4_select_section_coefficients_coeff_4_0_porty;
				end
	  end
	  
	  always @(*)
	  begin
		if ((ch3_x_adc_w <= 0) &&(-ch3_x_adc_w > ch3_section_limit)) begin
			ch3_select_section_coefficients_stdev = ch3_select_section_coefficients_stdev_1_porty;
			ch3_select_section_coefficients_mean = ch3_select_section_coefficients_mean_1_porty;
			ch3_select_section_coefficients_coeff_8 = ch3_select_section_coefficients_coeff_1_8_porty;
			ch3_select_section_coefficients_coeff_7 = ch3_select_section_coefficients_coeff_1_7_porty;
	        ch3_select_section_coefficients_coeff_6 = ch3_select_section_coefficients_coeff_1_6_porty;
	        ch3_select_section_coefficients_coeff_5 = ch3_select_section_coefficients_coeff_1_5_porty;
	        ch3_select_section_coefficients_coeff_4 = ch3_select_section_coefficients_coeff_1_4_porty;
	        ch3_select_section_coefficients_coeff_3 = ch3_select_section_coefficients_coeff_1_3_porty;
	        ch3_select_section_coefficients_coeff_2 = ch3_select_section_coefficients_coeff_1_2_porty;
	        ch3_select_section_coefficients_coeff_1 = ch3_select_section_coefficients_coeff_1_1_porty;
	        ch3_select_section_coefficients_coeff_0 = ch3_select_section_coefficients_coeff_1_0_porty;
		end
		else if (ch3_x_adc_w <= 0)  begin
				ch3_select_section_coefficients_stdev = ch3_select_section_coefficients_stdev_2_porty;
				ch3_select_section_coefficients_mean = ch3_select_section_coefficients_mean_2_porty;
				ch3_select_section_coefficients_coeff_8 = ch3_select_section_coefficients_coeff_2_8_porty;
				ch3_select_section_coefficients_coeff_7 = ch3_select_section_coefficients_coeff_2_7_porty;
				ch3_select_section_coefficients_coeff_6 = ch3_select_section_coefficients_coeff_2_6_porty;
				ch3_select_section_coefficients_coeff_5 = ch3_select_section_coefficients_coeff_2_5_porty;
				ch3_select_section_coefficients_coeff_4 = ch3_select_section_coefficients_coeff_2_4_porty;
				ch3_select_section_coefficients_coeff_3 = ch3_select_section_coefficients_coeff_2_3_porty;
				ch3_select_section_coefficients_coeff_2 = ch3_select_section_coefficients_coeff_2_2_porty;
				ch3_select_section_coefficients_coeff_1 = ch3_select_section_coefficients_coeff_2_1_porty;
				ch3_select_section_coefficients_coeff_0 = ch3_select_section_coefficients_coeff_2_0_porty;
			end
			else if (ch3_section_limit >= ch3_x_adc_w) begin
				ch3_select_section_coefficients_stdev = ch3_select_section_coefficients_stdev_3_porty;
				ch3_select_section_coefficients_mean = ch3_select_section_coefficients_mean_3_porty;
				ch3_select_section_coefficients_coeff_8 = ch3_select_section_coefficients_coeff_3_8_porty;
				ch3_select_section_coefficients_coeff_7 = ch3_select_section_coefficients_coeff_3_7_porty;
				ch3_select_section_coefficients_coeff_6 = ch3_select_section_coefficients_coeff_3_6_porty;
				ch3_select_section_coefficients_coeff_5 = ch3_select_section_coefficients_coeff_3_5_porty;
				ch3_select_section_coefficients_coeff_4 = ch3_select_section_coefficients_coeff_3_4_porty;
				ch3_select_section_coefficients_coeff_3 = ch3_select_section_coefficients_coeff_3_3_porty;
				ch3_select_section_coefficients_coeff_2 = ch3_select_section_coefficients_coeff_3_2_porty;
				ch3_select_section_coefficients_coeff_1 = ch3_select_section_coefficients_coeff_3_1_porty;
				ch3_select_section_coefficients_coeff_0 = ch3_select_section_coefficients_coeff_3_0_porty;
				end
				else begin
				ch3_select_section_coefficients_stdev = ch3_select_section_coefficients_stdev_4_porty;
				ch3_select_section_coefficients_mean = ch3_select_section_coefficients_mean_4_porty;
				ch3_select_section_coefficients_coeff_8 = ch3_select_section_coefficients_coeff_4_8_porty;
				ch3_select_section_coefficients_coeff_7 = ch3_select_section_coefficients_coeff_4_7_porty;
				ch3_select_section_coefficients_coeff_6 = ch3_select_section_coefficients_coeff_4_6_porty;
				ch3_select_section_coefficients_coeff_5 = ch3_select_section_coefficients_coeff_4_5_porty;
				ch3_select_section_coefficients_coeff_4 = ch3_select_section_coefficients_coeff_4_4_porty;
				ch3_select_section_coefficients_coeff_3 = ch3_select_section_coefficients_coeff_4_3_porty;
				ch3_select_section_coefficients_coeff_2 = ch3_select_section_coefficients_coeff_4_2_porty;
				ch3_select_section_coefficients_coeff_1 = ch3_select_section_coefficients_coeff_4_1_porty;
				ch3_select_section_coefficients_coeff_0 = ch3_select_section_coefficients_coeff_4_0_porty;
				end
	  end
	  
	  always @(*)
	  begin
		if ((ch2_x_adc_w <= 0) &&(-ch2_x_adc_w > ch2_section_limit)) begin
			ch2_select_section_coefficients_stdev = ch2_select_section_coefficients_stdev_1_porty;
			ch2_select_section_coefficients_mean = ch2_select_section_coefficients_mean_1_porty;
			ch2_select_section_coefficients_coeff_8 = ch2_select_section_coefficients_coeff_1_8_porty;
			ch2_select_section_coefficients_coeff_7 = ch2_select_section_coefficients_coeff_1_7_porty;
	        ch2_select_section_coefficients_coeff_6 = ch2_select_section_coefficients_coeff_1_6_porty;
	        ch2_select_section_coefficients_coeff_5 = ch2_select_section_coefficients_coeff_1_5_porty;
	        ch2_select_section_coefficients_coeff_4 = ch2_select_section_coefficients_coeff_1_4_porty;
	        ch2_select_section_coefficients_coeff_3 = ch2_select_section_coefficients_coeff_1_3_porty;
	        ch2_select_section_coefficients_coeff_2 = ch2_select_section_coefficients_coeff_1_2_porty;
	        ch2_select_section_coefficients_coeff_1 = ch2_select_section_coefficients_coeff_1_1_porty;
	        ch2_select_section_coefficients_coeff_0 = ch2_select_section_coefficients_coeff_1_0_porty;
		end
		else if (ch2_x_adc_w <= 0)  begin
				ch2_select_section_coefficients_stdev = ch2_select_section_coefficients_stdev_2_porty;
				ch2_select_section_coefficients_mean = ch2_select_section_coefficients_mean_2_porty;
				ch2_select_section_coefficients_coeff_8 = ch2_select_section_coefficients_coeff_2_8_porty;
				ch2_select_section_coefficients_coeff_7 = ch2_select_section_coefficients_coeff_2_7_porty;
				ch2_select_section_coefficients_coeff_6 = ch2_select_section_coefficients_coeff_2_6_porty;
				ch2_select_section_coefficients_coeff_5 = ch2_select_section_coefficients_coeff_2_5_porty;
				ch2_select_section_coefficients_coeff_4 = ch2_select_section_coefficients_coeff_2_4_porty;
				ch2_select_section_coefficients_coeff_3 = ch2_select_section_coefficients_coeff_2_3_porty;
				ch2_select_section_coefficients_coeff_2 = ch2_select_section_coefficients_coeff_2_2_porty;
				ch2_select_section_coefficients_coeff_1 = ch2_select_section_coefficients_coeff_2_1_porty;
				ch2_select_section_coefficients_coeff_0 = ch2_select_section_coefficients_coeff_2_0_porty;
			end
			else if (ch2_section_limit >= ch2_x_adc_w) begin
				ch2_select_section_coefficients_stdev = ch2_select_section_coefficients_stdev_3_porty;
				ch2_select_section_coefficients_mean = ch2_select_section_coefficients_mean_3_porty;
				ch2_select_section_coefficients_coeff_8 = ch2_select_section_coefficients_coeff_3_8_porty;
				ch2_select_section_coefficients_coeff_7 = ch2_select_section_coefficients_coeff_3_7_porty;
				ch2_select_section_coefficients_coeff_6 = ch2_select_section_coefficients_coeff_3_6_porty;
				ch2_select_section_coefficients_coeff_5 = ch2_select_section_coefficients_coeff_3_5_porty;
				ch2_select_section_coefficients_coeff_4 = ch2_select_section_coefficients_coeff_3_4_porty;
				ch2_select_section_coefficients_coeff_3 = ch2_select_section_coefficients_coeff_3_3_porty;
				ch2_select_section_coefficients_coeff_2 = ch2_select_section_coefficients_coeff_3_2_porty;
				ch2_select_section_coefficients_coeff_1 = ch2_select_section_coefficients_coeff_3_1_porty;
				ch2_select_section_coefficients_coeff_0 = ch2_select_section_coefficients_coeff_3_0_porty;
				end
				else begin
				ch2_select_section_coefficients_stdev = ch2_select_section_coefficients_stdev_4_porty;
				ch2_select_section_coefficients_mean = ch2_select_section_coefficients_mean_4_porty;
				ch2_select_section_coefficients_coeff_8 = ch2_select_section_coefficients_coeff_4_8_porty;
				ch2_select_section_coefficients_coeff_7 = ch2_select_section_coefficients_coeff_4_7_porty;
				ch2_select_section_coefficients_coeff_6 = ch2_select_section_coefficients_coeff_4_6_porty;
				ch2_select_section_coefficients_coeff_5 = ch2_select_section_coefficients_coeff_4_5_porty;
				ch2_select_section_coefficients_coeff_4 = ch2_select_section_coefficients_coeff_4_4_porty;
				ch2_select_section_coefficients_coeff_3 = ch2_select_section_coefficients_coeff_4_3_porty;
				ch2_select_section_coefficients_coeff_2 = ch2_select_section_coefficients_coeff_4_2_porty;
				ch2_select_section_coefficients_coeff_1 = ch2_select_section_coefficients_coeff_4_1_porty;
				ch2_select_section_coefficients_coeff_0 = ch2_select_section_coefficients_coeff_4_0_porty;
				end
	  end
	  
	  always @(*)
	  begin
		if ((ch1_x_adc_w <= 0) &&(-ch1_x_adc_w > ch1_section_limit)) begin
			ch1_select_section_coefficients_stdev = ch1_select_section_coefficients_stdev_1_porty;
			ch1_select_section_coefficients_mean = ch1_select_section_coefficients_mean_1_porty;
			ch1_select_section_coefficients_coeff_8 = ch1_select_section_coefficients_coeff_1_8_porty;
			ch1_select_section_coefficients_coeff_7 = ch1_select_section_coefficients_coeff_1_7_porty;
	        ch1_select_section_coefficients_coeff_6 = ch1_select_section_coefficients_coeff_1_6_porty;
	        ch1_select_section_coefficients_coeff_5 = ch1_select_section_coefficients_coeff_1_5_porty;
	        ch1_select_section_coefficients_coeff_4 = ch1_select_section_coefficients_coeff_1_4_porty;
	        ch1_select_section_coefficients_coeff_3 = ch1_select_section_coefficients_coeff_1_3_porty;
	        ch1_select_section_coefficients_coeff_2 = ch1_select_section_coefficients_coeff_1_2_porty;
	        ch1_select_section_coefficients_coeff_1 = ch1_select_section_coefficients_coeff_1_1_porty;
	        ch1_select_section_coefficients_coeff_0 = ch1_select_section_coefficients_coeff_1_0_porty;
		end
		else if (ch1_x_adc_w <= 0)  begin
				ch1_select_section_coefficients_stdev = ch1_select_section_coefficients_stdev_2_porty;
				ch1_select_section_coefficients_mean = ch1_select_section_coefficients_mean_2_porty;
				ch1_select_section_coefficients_coeff_8 = ch1_select_section_coefficients_coeff_2_8_porty;
				ch1_select_section_coefficients_coeff_7 = ch1_select_section_coefficients_coeff_2_7_porty;
				ch1_select_section_coefficients_coeff_6 = ch1_select_section_coefficients_coeff_2_6_porty;
				ch1_select_section_coefficients_coeff_5 = ch1_select_section_coefficients_coeff_2_5_porty;
				ch1_select_section_coefficients_coeff_4 = ch1_select_section_coefficients_coeff_2_4_porty;
				ch1_select_section_coefficients_coeff_3 = ch1_select_section_coefficients_coeff_2_3_porty;
				ch1_select_section_coefficients_coeff_2 = ch1_select_section_coefficients_coeff_2_2_porty;
				ch1_select_section_coefficients_coeff_1 = ch1_select_section_coefficients_coeff_2_1_porty;
				ch1_select_section_coefficients_coeff_0 = ch1_select_section_coefficients_coeff_2_0_porty;
			end
			else if (ch1_section_limit >= ch1_x_adc_w) begin
				ch1_select_section_coefficients_stdev = ch1_select_section_coefficients_stdev_3_porty;
				ch1_select_section_coefficients_mean = ch1_select_section_coefficients_mean_3_porty;
				ch1_select_section_coefficients_coeff_8 = ch1_select_section_coefficients_coeff_3_8_porty;
				ch1_select_section_coefficients_coeff_7 = ch1_select_section_coefficients_coeff_3_7_porty;
				ch1_select_section_coefficients_coeff_6 = ch1_select_section_coefficients_coeff_3_6_porty;
				ch1_select_section_coefficients_coeff_5 = ch1_select_section_coefficients_coeff_3_5_porty;
				ch1_select_section_coefficients_coeff_4 = ch1_select_section_coefficients_coeff_3_4_porty;
				ch1_select_section_coefficients_coeff_3 = ch1_select_section_coefficients_coeff_3_3_porty;
				ch1_select_section_coefficients_coeff_2 = ch1_select_section_coefficients_coeff_3_2_porty;
				ch1_select_section_coefficients_coeff_1 = ch1_select_section_coefficients_coeff_3_1_porty;
				ch1_select_section_coefficients_coeff_0 = ch1_select_section_coefficients_coeff_3_0_porty;
				end
				else begin
				ch1_select_section_coefficients_stdev = ch1_select_section_coefficients_stdev_4_porty;
				ch1_select_section_coefficients_mean = ch1_select_section_coefficients_mean_4_porty;
				ch1_select_section_coefficients_coeff_8 = ch1_select_section_coefficients_coeff_4_8_porty;
				ch1_select_section_coefficients_coeff_7 = ch1_select_section_coefficients_coeff_4_7_porty;
				ch1_select_section_coefficients_coeff_6 = ch1_select_section_coefficients_coeff_4_6_porty;
				ch1_select_section_coefficients_coeff_5 = ch1_select_section_coefficients_coeff_4_5_porty;
				ch1_select_section_coefficients_coeff_4 = ch1_select_section_coefficients_coeff_4_4_porty;
				ch1_select_section_coefficients_coeff_3 = ch1_select_section_coefficients_coeff_4_3_porty;
				ch1_select_section_coefficients_coeff_2 = ch1_select_section_coefficients_coeff_4_2_porty;
				ch1_select_section_coefficients_coeff_1 = ch1_select_section_coefficients_coeff_4_1_porty;
				ch1_select_section_coefficients_coeff_0 = ch1_select_section_coefficients_coeff_4_0_porty;
				end
	  end
	  
	  always @(*)
	  begin
		if ((ch0_x_adc_w <= 0) &&(-ch0_x_adc_w > ch0_section_limit)) begin
			ch0_select_section_coefficients_stdev = ch0_select_section_coefficients_stdev_1_porty;
			ch0_select_section_coefficients_mean = ch0_select_section_coefficients_mean_1_porty;
			ch0_select_section_coefficients_coeff_8 = ch0_select_section_coefficients_coeff_1_8_porty;
			ch0_select_section_coefficients_coeff_7 = ch0_select_section_coefficients_coeff_1_7_porty;
	        ch0_select_section_coefficients_coeff_6 = ch0_select_section_coefficients_coeff_1_6_porty;
	        ch0_select_section_coefficients_coeff_5 = ch0_select_section_coefficients_coeff_1_5_porty;
	        ch0_select_section_coefficients_coeff_4 = ch0_select_section_coefficients_coeff_1_4_porty;
	        ch0_select_section_coefficients_coeff_3 = ch0_select_section_coefficients_coeff_1_3_porty;
	        ch0_select_section_coefficients_coeff_2 = ch0_select_section_coefficients_coeff_1_2_porty;
	        ch0_select_section_coefficients_coeff_1 = ch0_select_section_coefficients_coeff_1_1_porty;
	        ch0_select_section_coefficients_coeff_0 = ch0_select_section_coefficients_coeff_1_0_porty;
		end
		else if (ch0_x_adc_w <= 0)  begin
				ch0_select_section_coefficients_stdev = ch0_select_section_coefficients_stdev_2_porty;
				ch0_select_section_coefficients_mean = ch0_select_section_coefficients_mean_2_porty;
				ch0_select_section_coefficients_coeff_8 = ch0_select_section_coefficients_coeff_2_8_porty;
				ch0_select_section_coefficients_coeff_7 = ch0_select_section_coefficients_coeff_2_7_porty;
				ch0_select_section_coefficients_coeff_6 = ch0_select_section_coefficients_coeff_2_6_porty;
				ch0_select_section_coefficients_coeff_5 = ch0_select_section_coefficients_coeff_2_5_porty;
				ch0_select_section_coefficients_coeff_4 = ch0_select_section_coefficients_coeff_2_4_porty;
				ch0_select_section_coefficients_coeff_3 = ch0_select_section_coefficients_coeff_2_3_porty;
				ch0_select_section_coefficients_coeff_2 = ch0_select_section_coefficients_coeff_2_2_porty;
				ch0_select_section_coefficients_coeff_1 = ch0_select_section_coefficients_coeff_2_1_porty;
				ch0_select_section_coefficients_coeff_0 = ch0_select_section_coefficients_coeff_2_0_porty;
			end
			else if (ch0_section_limit >= ch0_x_adc_w) begin
				ch0_select_section_coefficients_stdev = ch0_select_section_coefficients_stdev_3_porty;
				ch0_select_section_coefficients_mean = ch0_select_section_coefficients_mean_3_porty;
				ch0_select_section_coefficients_coeff_8 = ch0_select_section_coefficients_coeff_3_8_porty;
				ch0_select_section_coefficients_coeff_7 = ch0_select_section_coefficients_coeff_3_7_porty;
				ch0_select_section_coefficients_coeff_6 = ch0_select_section_coefficients_coeff_3_6_porty;
				ch0_select_section_coefficients_coeff_5 = ch0_select_section_coefficients_coeff_3_5_porty;
				ch0_select_section_coefficients_coeff_4 = ch0_select_section_coefficients_coeff_3_4_porty;
				ch0_select_section_coefficients_coeff_3 = ch0_select_section_coefficients_coeff_3_3_porty;
				ch0_select_section_coefficients_coeff_2 = ch0_select_section_coefficients_coeff_3_2_porty;
				ch0_select_section_coefficients_coeff_1 = ch0_select_section_coefficients_coeff_3_1_porty;
				ch0_select_section_coefficients_coeff_0 = ch0_select_section_coefficients_coeff_3_0_porty;
				end
				else begin
				ch0_select_section_coefficients_stdev = ch0_select_section_coefficients_stdev_4_porty;
				ch0_select_section_coefficients_mean = ch0_select_section_coefficients_mean_4_porty;
				ch0_select_section_coefficients_coeff_8 = ch0_select_section_coefficients_coeff_4_8_porty;
				ch0_select_section_coefficients_coeff_7 = ch0_select_section_coefficients_coeff_4_7_porty;
				ch0_select_section_coefficients_coeff_6 = ch0_select_section_coefficients_coeff_4_6_porty;
				ch0_select_section_coefficients_coeff_5 = ch0_select_section_coefficients_coeff_4_5_porty;
				ch0_select_section_coefficients_coeff_4 = ch0_select_section_coefficients_coeff_4_4_porty;
				ch0_select_section_coefficients_coeff_3 = ch0_select_section_coefficients_coeff_4_3_porty;
				ch0_select_section_coefficients_coeff_2 = ch0_select_section_coefficients_coeff_4_2_porty;
				ch0_select_section_coefficients_coeff_1 = ch0_select_section_coefficients_coeff_4_1_porty;
				ch0_select_section_coefficients_coeff_0 = ch0_select_section_coefficients_coeff_4_0_porty;
				end
	  end
	  
	  always@ (*)
	  begin
		if (GlobalReset == 1) next_state = 0;
		else begin
			case (state)
			0: if (srdyi) begin ftos_x_r = ch7_x_adc; next_state = state + 1; end else next_state = 0;
			1: begin next_state = state + 1; ftos_x_r = ch6_x_adc; end
			2: begin next_state = state + 1; adder1_x_r = ftos_y_w; adder1_y_r = ch7_select_section_coefficients_mean; ftos_x_r = ch5_x_adc; end
			3: begin next_state = state + 1; adder1_y_r = ch6_select_section_coefficients_mean; ftos_x_r = ch4_x_adc; end //adder1 1
			4: begin next_state = state + 1; adder1_y_r = ch5_select_section_coefficients_mean; ftos_x_r = ch3_x_adc; end
			5: begin next_state = state + 1; adder1_y_r = ch4_select_section_coefficients_mean; ftos_x_r = ch2_x_adc; end
			6: begin next_state = state + 1; adder1_y_r = ch3_select_section_coefficients_mean; ftos_x_r = ch1_x_adc; end
			7: begin next_state = state + 1; adder1_y_r = ch2_select_section_coefficients_mean; ftos_x_r = ch0_x_adc; end
			8: begin next_state = state + 1; adder1_y_r = ch1_select_section_coefficients_mean; end
			9: begin next_state = state + 1; adder1_y_r = ch0_select_section_coefficients_mean; end
			10: next_state = state + 1;
			11: begin next_state = state + 1; multiplier1_x_r = adder1_z_w; multiplier1_y_r = ch7_select_section_coefficients_stdev; end
			12: begin next_state = state + 1; multiplier1_x_r = adder1_z_w; multiplier1_y_r = ch6_select_section_coefficients_stdev; end //mul1 1
			13: begin next_state = state + 1; multiplier1_x_r = adder1_z_w; multiplier1_y_r = ch5_select_section_coefficients_stdev; end
			14: begin next_state = state + 1; multiplier1_x_r = adder1_z_w; multiplier1_y_r = ch4_select_section_coefficients_stdev; end
			15: begin next_state = state + 1; multiplier1_x_r = adder1_z_w; multiplier1_y_r = ch3_select_section_coefficients_stdev; end
			16: begin next_state = state + 1; multiplier1_x_r = adder1_z_w; multiplier1_y_r = ch2_select_section_coefficients_stdev; end
			17: begin next_state = state + 1; multiplier1_x_r = adder1_z_w; multiplier1_y_r = ch1_select_section_coefficients_stdev; end
			18: begin next_state = state + 1; multiplier1_x_r = adder1_z_w; multiplier1_y_r = ch0_select_section_coefficients_stdev; multiplier2_x_r = ch7_x_smc_r; multiplier2_y_r = ch7_select_section_coefficients_coeff_8; end
/*mul2 1*/	19: begin next_state = state + 1; multiplier1_x_r = adder1_z_w; multiplier2_x_r = ch6_x_smc_r; multiplier2_y_r = ch6_select_section_coefficients_coeff_8; end
			20: begin next_state = state + 1; multiplier1_x_r = adder1_z_w; multiplier2_x_r = ch5_x_smc_r; multiplier2_y_r = ch5_select_section_coefficients_coeff_8; end
			21: begin next_state = state + 1; multiplier1_x_r = adder1_z_w; multiplier2_x_r = ch4_x_smc_r; multiplier2_y_r = ch4_select_section_coefficients_coeff_8; end
			22: begin next_state = state + 1; multiplier1_x_r = adder1_z_w; multiplier2_x_r = ch3_x_smc_r; multiplier2_y_r = ch3_select_section_coefficients_coeff_8; end
			23: begin next_state = state + 1; multiplier1_x_r = adder1_z_w; multiplier2_x_r = ch2_x_smc_r; multiplier2_y_r = ch2_select_section_coefficients_coeff_8; end
			24: begin 
				next_state = state + 1; 
				multiplier1_x_r = adder1_z_w; 
				multiplier2_x_r = ch1_x_smc_r; 
				multiplier2_y_r = ch1_select_section_coefficients_coeff_8; 
				adder2_x_r = multiplier2_z_w;
				case (N_loop)
				8: adder2_y_r = ch7_select_section_coefficients_coeff_7;
				7: adder2_y_r = ch7_select_section_coefficients_coeff_6;
				6: adder2_y_r = ch7_select_section_coefficients_coeff_5;
				5: adder2_y_r = ch7_select_section_coefficients_coeff_4;
				4: adder2_y_r = ch7_select_section_coefficients_coeff_3;
				3: adder2_y_r = ch7_select_section_coefficients_coeff_2;
				2: adder2_y_r = ch7_select_section_coefficients_coeff_1;
				1: adder2_y_r = ch7_select_section_coefficients_coeff_0;
				endcase
				end
/*adder2 1*/25: begin 
				next_state = state + 1; 
				multiplier2_x_r = ch0_x_smc_r; 
				multiplier2_y_r = ch0_select_section_coefficients_coeff_8;
				adder2_x_r = multiplier2_z_w;
				case (N_loop)
					8: adder2_y_r = ch6_select_section_coefficients_coeff_7;
					7: adder2_y_r = ch6_select_section_coefficients_coeff_6;
					6: adder2_y_r = ch6_select_section_coefficients_coeff_5;
					5: adder2_y_r = ch6_select_section_coefficients_coeff_4;
					4: adder2_y_r = ch6_select_section_coefficients_coeff_3;
					3: adder2_y_r = ch6_select_section_coefficients_coeff_2;
					2: adder2_y_r = ch6_select_section_coefficients_coeff_1;
					1: adder2_y_r = ch6_select_section_coefficients_coeff_0;
				endcase
				end
			26: begin
				next_state = state + 1; 
				adder2_x_r = multiplier2_z_w;
				case (N_loop)
				8: adder2_y_r = ch5_select_section_coefficients_coeff_7;
				7: adder2_y_r = ch5_select_section_coefficients_coeff_6;
				6: adder2_y_r = ch5_select_section_coefficients_coeff_5;
				5: adder2_y_r = ch5_select_section_coefficients_coeff_4;
				4: adder2_y_r = ch5_select_section_coefficients_coeff_3;
				3: adder2_y_r = ch5_select_section_coefficients_coeff_2;
				2: adder2_y_r = ch5_select_section_coefficients_coeff_1;
				1: adder2_y_r = ch5_select_section_coefficients_coeff_0;
				endcase
				end
			27: begin
				next_state = state + 1; 
				adder2_x_r = multiplier2_z_w;
				case (N_loop)
				8: adder2_y_r = ch4_select_section_coefficients_coeff_7;
				7: adder2_y_r = ch4_select_section_coefficients_coeff_6;
				6: adder2_y_r = ch4_select_section_coefficients_coeff_5;
				5: adder2_y_r = ch4_select_section_coefficients_coeff_4;
				4: adder2_y_r = ch4_select_section_coefficients_coeff_3;
				3: adder2_y_r = ch4_select_section_coefficients_coeff_2;
				2: adder2_y_r = ch4_select_section_coefficients_coeff_1;
				1: adder2_y_r = ch4_select_section_coefficients_coeff_0;
				endcase
				end
			28: begin
				next_state = state + 1; 
				adder2_x_r = multiplier2_z_w;
				case (N_loop)
				8: adder2_y_r = ch3_select_section_coefficients_coeff_7;
				7: adder2_y_r = ch3_select_section_coefficients_coeff_6;
				6: adder2_y_r = ch3_select_section_coefficients_coeff_5;
				5: adder2_y_r = ch3_select_section_coefficients_coeff_4;
				4: adder2_y_r = ch3_select_section_coefficients_coeff_3;
				3: adder2_y_r = ch3_select_section_coefficients_coeff_2;
				2: adder2_y_r = ch3_select_section_coefficients_coeff_1;
				1: adder2_y_r = ch3_select_section_coefficients_coeff_0;
				endcase
				end
			29: begin
				next_state = state + 1; 
				adder2_x_r = multiplier2_z_w;
				case (N_loop)
				8: adder2_y_r = ch2_select_section_coefficients_coeff_7;
				7: adder2_y_r = ch2_select_section_coefficients_coeff_6;
				6: adder2_y_r = ch2_select_section_coefficients_coeff_5;
				5: adder2_y_r = ch2_select_section_coefficients_coeff_4;
				4: adder2_y_r = ch2_select_section_coefficients_coeff_3;
				3: adder2_y_r = ch2_select_section_coefficients_coeff_2;
				2: adder2_y_r = ch2_select_section_coefficients_coeff_1;
				1: adder2_y_r = ch2_select_section_coefficients_coeff_0;
				endcase
				end
			30: begin
				next_state = state + 1; 
				adder2_x_r = multiplier2_z_w;
				case (N_loop)
				8: adder2_y_r = ch1_select_section_coefficients_coeff_7;
				7: adder2_y_r = ch1_select_section_coefficients_coeff_6;
				6: adder2_y_r = ch1_select_section_coefficients_coeff_5;
				5: adder2_y_r = ch1_select_section_coefficients_coeff_4;
				4: adder2_y_r = ch1_select_section_coefficients_coeff_3;
				3: adder2_y_r = ch1_select_section_coefficients_coeff_2;
				2: adder2_y_r = ch1_select_section_coefficients_coeff_1;
				1: adder2_y_r = ch1_select_section_coefficients_coeff_0;
				endcase
				end
			31: begin
				next_state = state + 1;
				adder2_x_r = multiplier2_z_w;
				case (N_loop)
				8: adder2_y_r = ch0_select_section_coefficients_coeff_7;
				7: adder2_y_r = ch0_select_section_coefficients_coeff_6;
				6: adder2_y_r = ch0_select_section_coefficients_coeff_5;
				5: adder2_y_r = ch0_select_section_coefficients_coeff_4;
				4: adder2_y_r = ch0_select_section_coefficients_coeff_3;
				3: adder2_y_r = ch0_select_section_coefficients_coeff_2;
				2: adder2_y_r = ch0_select_section_coefficients_coeff_1;
				1: adder2_y_r = ch0_select_section_coefficients_coeff_0;
				endcase
				end
			32: next_state = state + 1;
			33: if (N_loop > 3'b000) begin next_state = state + 1; multiplier2_y_r = adder2_z_w; multiplier2_x_r = ch7_x_smc_r; end
				else begin next_state = 41; stof_x_r = adder2_z_w; end
			34: begin
				next_state = state + 1;
				multiplier2_y_r = adder2_z_w;
				multiplier2_x_r = ch6_x_smc_r;
				end
			35: begin
				next_state = state + 1;
				multiplier2_y_r = adder2_z_w;
				multiplier2_x_r = ch5_x_smc_r;
				end
			36: begin
				next_state = state + 1;
				multiplier2_y_r = adder2_z_w;
				multiplier2_x_r = ch4_x_smc_r;
				end
			37: begin
				next_state = state + 1;
				multiplier2_y_r = adder2_z_w;
				multiplier2_x_r = ch3_x_smc_r;
				end
			38: begin
				next_state = state + 1;
				multiplier2_y_r = adder2_z_w;
				multiplier2_x_r = ch2_x_smc_r;
				end
			39: begin
				next_state = state + 1;
				multiplier2_y_r = adder2_z_w;
				multiplier2_x_r = ch1_x_smc_r;
				adder2_x_r = multiplier2_z_w;
				case (N_loop)
				8: adder2_y_r = ch7_select_section_coefficients_coeff_7;
				7: adder2_y_r = ch7_select_section_coefficients_coeff_6;
				6: adder2_y_r = ch7_select_section_coefficients_coeff_5;
				5: adder2_y_r = ch7_select_section_coefficients_coeff_4;
				4: adder2_y_r = ch7_select_section_coefficients_coeff_3;
				3: adder2_y_r = ch7_select_section_coefficients_coeff_2;
				2: adder2_y_r = ch7_select_section_coefficients_coeff_1;
				1: adder2_y_r = ch7_select_section_coefficients_coeff_0;
				endcase
				end
			40: begin
				next_state = 26;
				multiplier2_y_r = adder2_z_w;
				multiplier2_x_r = ch0_x_smc_r;
				adder2_x_r = multiplier2_z_w;
				case (N_loop)
				8: adder2_y_r = ch6_select_section_coefficients_coeff_7;
				7: adder2_y_r = ch6_select_section_coefficients_coeff_6;
				6: adder2_y_r = ch6_select_section_coefficients_coeff_5;
				5: adder2_y_r = ch6_select_section_coefficients_coeff_4;
				4: adder2_y_r = ch6_select_section_coefficients_coeff_3;
				3: adder2_y_r = ch6_select_section_coefficients_coeff_2;
				2: adder2_y_r = ch6_select_section_coefficients_coeff_1;
				1: adder2_y_r = ch6_select_section_coefficients_coeff_0;
				endcase
				end
			41: begin
				next_state = state + 1;
				stof_x_r = adder2_z_w;
				end
			42: begin
				next_state = state + 1;
				stof_x_r = adder2_z_w;
				end
			43: begin
				next_state = state + 1;
				stof_x_r = adder2_z_w;
				end
			44: begin
				next_state = state + 1;
				stof_x_r = adder2_z_w;
				end
			45: begin
				next_state = state + 1;
				stof_x_r = adder2_z_w;
				end
			46: begin
				next_state = state + 1;
				stof_x_r = adder2_z_w;
				end
			47: begin
				next_state = state + 1;
				stof_x_r = adder2_z_w;
				end
			48: begin
				next_state = state + 1;
				stof_x_r = adder2_z_w;
				end
			49: begin
				next_state = state + 1;
				end
			50: begin
				next_state = 0;
				end
			default:
				next_state = 0;
			endcase
		end
	end
	 
	   //----------sequential logic------------------------
	  always @(posedge clk)
	  begin
		  
		
			state <= next_state;
			case (state)
				17: begin ch7_x_smc_r <= multiplier1_z_w; N_loop <= 8; end
				18: begin ch6_x_smc_r <= multiplier1_z_w; end
				19: begin ch5_x_smc_r <= multiplier1_z_w; end
				20: begin ch4_x_smc_r <= multiplier1_z_w; end
				21: begin ch3_x_smc_r <= multiplier1_z_w; end
				22: begin ch2_x_smc_r <= multiplier1_z_w; end
				23: begin ch1_x_smc_r <= multiplier1_z_w; end
				24: begin ch0_x_smc_r <= multiplier1_z_w; end
			endcase
			if ((state == 32) &&(N_loop > 0)) N_loop <= N_loop - 1;
			
	  end
	  
	   //----------output logic------------------------
	  always @(posedge clk)
	  begin
		if (GlobalReset == 1'b1) begin 
		ch7_x_lin_r <= 0;
		ch6_x_lin_r <= 0;
		ch5_x_lin_r <= 0;
		ch4_x_lin_r <= 0;
		ch3_x_lin_r <= 0;
		ch2_x_lin_r <= 0;
		ch1_x_lin_r <= 0;
		ch0_x_lin_r <= 0;
		srdyo_r <= 0; 
		end 
		else begin 
			case (state)
				43: ch7_x_lin_r <= stof_y_w;
				44: ch6_x_lin_r <= stof_y_w;
				45: ch5_x_lin_r <= stof_y_w;
				46: ch4_x_lin_r <= stof_y_w;
				47: ch3_x_lin_r <= stof_y_w;
				48: ch2_x_lin_r <= stof_y_w;
				49: ch1_x_lin_r <= stof_y_w;
				50: begin ch0_x_lin_r <= stof_y_w; srdyo_r <= 1; end
			endcase
			if (srdyo_r) srdyo_r <= 0;
			if (srdyi) srdyo_r <= 0;
			end
	  end
	  endmodule
	  