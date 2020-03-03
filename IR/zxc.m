T = measurementData;
IR = 0;
for i = 1:6
    IR = T(i,2).ImpulseResponse;
    IR_a = IR.Amplitude;
    IR_t = IR.Time;
    writematrix([IR_a, IR_t],[T(i,1).Row{1} '.csv'],'delimiter',',');
end