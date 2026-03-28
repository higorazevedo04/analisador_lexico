.data
.align 3
const_0: .double 2
const_1: .double 3
const_2: .double 2
const_3: .double 6
const_4: .double 2
const_5: .double 6
const_6: .double 3.14
const_7: .double 2
const_8: .double 6
const_9: .double 10
const_10: .double 25
const_11: .double 10
const_12: .double 15
const_13: .double 2
const_14: .double 4
const_15: .double 10
const_16: .double 2
const_17: .double 0
const_18: .double 35
const_19: .double 5
const_20: .double 0.0
const_21: .double 10
const_22: .double 2
const_23: .double 20
const_24: .double 5
const_25: .double 4.0
res_linha_1: .double 0.0
res_linha_2: .double 0.0
res_linha_3: .double 0.0
res_linha_4: .double 0.0
res_linha_5: .double 0.0
res_linha_6: .double 0.0
res_linha_7: .double 0.0
res_linha_8: .double 0.0
res_linha_9: .double 0.0
res_linha_10: .double 0.0
res_linha_11: .double 0.0
res_linha_12: .double 0.0
res_linha_13: .double 0.0
res_linha_14: .double 0.0
res_linha_15: .double 0.0
res_linha_16: .double 0.0
res_linha_17: .double 0.0
res_linha_18: .double 0.0
res_linha_19: .double 0.0
res_linha_20: .double 0.0
res_linha_21: .double 0.0
res_linha_22: .double 0.0
res_linha_23: .double 0.0
res_linha_24: .double 0.0
res_linha_25: .double 0.0
res_linha_26: .double 0.0
res_linha_27: .double 0.0
res_linha_28: .double 0.0
res_linha_29: .double 0.0
res_linha_30: .double 0.0
res_linha_31: .double 0.0
res_linha_32: .double 0.0
res_linha_33: .double 0.0
res_linha_34: .double 0.0
res_linha_35: .double 0.0
res_linha_36: .double 0.0
res_linha_37: .double 0.0
res_linha_38: .double 0.0
res_linha_39: .double 0.0
res_linha_40: .double 0.0
res_linha_41: .double 0.0
res_linha_42: .double 0.0
res_linha_43: .double 0.0
res_linha_44: .double 0.0
res_linha_45: .double 0.0
res_linha_46: .double 0.0
res_linha_47: .double 0.0
res_linha_48: .double 0.0
res_linha_49: .double 0.0
res_linha_50: .double 0.0

.text
.global _start
_start:
    MOV R0, #0x40000000
    FMXR FPEXC, R0

    @ --- Linha 1 ---
    LDR R0, =const_0
    VLDR D0, [R0]
    VPUSH {D0}
    LDR R0, =const_1
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D1}
    VPOP {D0}
    VMUL.F64 D0, D0, D1
    VPUSH {D0}
    VPOP {D0}
    LDR R0, =res_linha_1
    VSTR.F64 D0, [R0]
    VPUSH {D0}

    @ --- Linha 2 ---
    LDR R0, =const_2
    VLDR D0, [R0]
    VPUSH {D0}
    LDR R0, =const_3
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D1}
    VPOP {D0}
    VADD.F64 D0, D0, D1
    VPUSH {D0}
    VPOP {D0}
    LDR R0, =res_linha_2
    VSTR.F64 D0, [R0]
    VPUSH {D0}

    @ --- Linha 3 ---
    LDR R0, =const_4
    VLDR D0, [R0]
    VPUSH {D0}
    LDR R0, =const_5
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D1}
    VPOP {D0}
    VSUB.F64 D0, D0, D1
    VPUSH {D0}
    VPOP {D0}
    LDR R0, =res_linha_3
    VSTR.F64 D0, [R0]
    VPUSH {D0}

    @ --- Linha 4 ---
    LDR R0, =const_6
    VLDR D0, [R0]
    VPUSH {D0}
    LDR R0, =const_7
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D1}
    VPOP {D0}
    VADD.F64 D0, D0, D1
    VPUSH {D0}
    VPOP {D0}
    LDR R0, =res_linha_4
    VSTR.F64 D0, [R0]
    VPUSH {D0}

    @ --- Linha 5 ---
    LDR R0, =const_8
    VLDR D0, [R0]
    VPUSH {D0}
    LDR R0, =const_9
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D1}
    VPOP {D0}
    VADD.F64 D0, D0, D1
    VPUSH {D0}
    VPOP {D0}
    LDR R0, =res_linha_5
    VSTR.F64 D0, [R0]
    VPUSH {D0}

    @ --- Linha 6 ---
    LDR R0, =const_10
    VLDR D0, [R0]
    VPUSH {D0}
    LDR R0, =const_11
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D1}
    VPOP {D0}
    VSUB.F64 D0, D0, D1
    VPUSH {D0}
    VPOP {D0}
    LDR R0, =res_linha_6
    VSTR.F64 D0, [R0]
    VPUSH {D0}

    @ --- Linha 7 ---
    LDR R0, =const_12
    VLDR D0, [R0]
    VPUSH {D0}
    LDR R0, =const_13
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D1}
    VPOP {D0}
    VMUL.F64 D0, D0, D1
    VPUSH {D0}
    LDR R0, =const_14
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D1}
    VPOP {D0}
    VADD.F64 D0, D0, D1
    VPUSH {D0}
    VPOP {D0}
    LDR R0, =res_linha_7
    VSTR.F64 D0, [R0]
    VPUSH {D0}

    @ --- Linha 8 ---
    LDR R0, =const_15
    VLDR D0, [R0]
    VPUSH {D0}
    LDR R0, =const_16
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D1}
    VPOP {D0}
    VSUB.F64 D0, D0, D1
    VPUSH {D0}
    VPOP {D0}
    LDR R0, =res_linha_8
    VSTR.F64 D0, [R0]
    VPUSH {D0}

    @ --- Linha 9 ---
    LDR R0, =const_17
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D0}          @ índice N (ignorado no ASM)
    LDR R0, =res_linha_8
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D0}
    LDR R0, =res_linha_9
    VSTR.F64 D0, [R0]
    VPUSH {D0}

    @ --- Linha 11 ---
    LDR R0, =const_18
    VLDR D0, [R0]
    VPUSH {D0}
    LDR R0, =const_19
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D1}
    VPOP {D0}
    LDR R0, =const_20
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D0}
    LDR R0, =res_linha_11
    VSTR.F64 D0, [R0]
    VPUSH {D0}

    @ --- Linha 12 ---
    LDR R0, =const_21
    VLDR D0, [R0]
    VPUSH {D0}
    LDR R0, =const_22
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D1}
    VPOP {D0}
    VDIV.F64 D0, D0, D1
    VPUSH {D0}
    VPOP {D0}
    LDR R0, =res_linha_12
    VSTR.F64 D0, [R0]
    VPUSH {D0}

    @ --- Linha 13 ---
    LDR R0, =const_23
    VLDR D0, [R0]
    VPUSH {D0}
    LDR R0, =const_24
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D1}
    VPOP {D0}
    LDR R0, =const_25
    VLDR D0, [R0]
    VPUSH {D0}
    VPOP {D0}
    LDR R0, =res_linha_13
    VSTR.F64 D0, [R0]
    VPUSH {D0}
_fim: B _fim
