module button_led_control ( // Renamed the module for clarity
    // Removed the button_in input

    // Outputs to L298N H-Bridge
    output wire drv1_motor_a_en, // Connect to L298N ENA
    output wire drv1_motor_a_in1, // Connect to L298N IN1
    output wire drv1_motor_a_in2, // Connect to L298N IN2
    output wire drv1_motor_b_en, // Connect to L298N ENB
    output wire drv1_motor_b_in3, // Connect to L298N IN3
    output wire drv1_motor_b_in4,  // Connect to L298N IN4
	output wire drv2_motor_a_en, // Connect to L298N ENA
    output wire drv2_motor_a_in1, // Connect to L298N IN1
    output wire drv2_motor_a_in2, // Connect to L298N IN2
    output wire drv2_motor_b_en, // Connect to L298N ENB
    output wire drv2_motor_b_in3, // Connect to L298N IN3
    output wire drv2_motor_b_in4 
);

    // Logic: Continuously run both motors in reverse

    // Always enable motors by setting Enable pins high
    assign drv1_motor_a_en = 1'b1; // Enable motor A always
    assign drv1_motor_b_en = 1'b1; // Enable motor B always

    // Set direction to reverse (IN1=0, IN2=1) for Motor A
    assign drv1_motor_a_in1 = 1'b1; // Set IN1 low
    assign drv1_motor_a_in2 = 1'b0; // Set IN2 high (assuming 01 is reverse)

    // Set direction to reverse (IN3=0, IN4=1) for Motor B
    assign drv1_motor_b_in3 = 1'b1; // Set IN3 low
    assign drv1_motor_b_in4 = 1'b0; // Set IN4 high (assuming 01 is reverse)

	assign drv2_motor_a_en = 1'b1; // Enable motor A always
    assign drv2_motor_b_en = 1'b1; // Enable motor B always

    // Set direction to reverse (IN1=0, IN2=1) for Motor A
    assign drv2_motor_a_in1 = 1'b1; // Set IN1 low
    assign drv2_motor_a_in2 = 1'b0; // Set IN2 high (assuming 01 is reverse)

    // Set direction to reverse (IN3=0, IN4=1) for Motor B
    assign drv2_motor_b_in3 = 1'b1; // Set IN3 low
    assign drv2_motor_b_in4 = 1'b0; // Set IN4 high (assuming 01 is reverse)

    /*
    // Original logic (commented out)
    // assign motor_a_en = button_in;
    // assign motor_b_en = button_in;
    // assign motor_a_in1 = button_in;
    // assign motor_a_in2 = 1'b0;
    // assign motor_b_in3 = button_in;
    // assign motor_b_in4 = 1'b0;
    */

endmodule