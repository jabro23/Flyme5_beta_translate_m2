.class public Lcom/android/dialer/dialpad/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/dialer/dialpad/o;


# static fields
.field private static final CYRILLIC_LETTERS_TO_DIGITS:[C

.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/dialer/dialpad/j;->a:[C

    .line 18
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/dialer/dialpad/j;->CYRILLIC_LETTERS_TO_DIGITS:[C

    return-void

    .line 7
    nop

    :array_0
    .array-data 2
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    .line 18
    :array_1
    .array-data 2
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(C)C
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 841
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_1

    .line 842
    sget-object v0, Lcom/android/dialer/dialpad/j;->a:[C

    add-int/lit8 v1, p1, -0x61

    aget-char p1, v0, v1

    .line 856
    .end local p1    # "ch":C
    :cond_0
    :goto_0
    return p1

    .line 844
    .restart local p1    # "ch":C
    :cond_1
    const/16 v0, 0x430

    if-lt p1, v0, :cond_2

    const/16 v0, 0x44f

    if-gt p1, v0, :cond_2

    .line 845
    sget-object v0, Lcom/android/dialer/dialpad/j;->CYRILLIC_LETTERS_TO_DIGITS:[C

    add-int/lit16 v1, p1, -0x430

    aget-char p1, v0, v1

    goto :goto_0

    .line 847
    :cond_2
    const/16 v0, 0x491

    if-ne p1, v0, :cond_3

    .line 848
    const/16 p1, 0x32

    goto :goto_0

    .line 850
    :cond_3
    const/16 v0, 0x451

    if-eq p1, v0, :cond_4

    const/16 v0, 0x454

    if-ne p1, v0, :cond_5

    .line 851
    :cond_4
    const/16 p1, 0x33

    goto :goto_0

    .line 853
    :cond_5
    const/16 v0, 0x456

    if-eq p1, v0, :cond_6

    const/16 v0, 0x457

    if-ne p1, v0, :cond_0

    .line 854
    :cond_6
    const/16 p1, 0x34

    goto :goto_0
.end method

.method public b(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 32
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x430

    if-lt p1, v0, :cond_1

    const/16 v0, 0x44f

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x451

    if-eq p1, v0, :cond_2

    const/16 v0, 0x454

    if-eq p1, v0, :cond_2

    const/16 v0, 0x456

    if-eq p1, v0, :cond_2

    const/16 v0, 0x457

    if-eq p1, v0, :cond_2

    const/16 v0, 0x491

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 37
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/j;->b(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/j;->c(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(C)C
    .locals 5
    .param p1, "ch"    # C

    .prologue
    const/16 v1, 0x65

    const/16 v2, 0x69

    const/16 v0, 0x61

    const/16 v4, 0x75

    const/16 v3, 0x6f

    .line 64
    sparse-switch p1, :sswitch_data_0

    .line 816
    .end local p1    # "ch":C
    :goto_0
    return p1

    .restart local p1    # "ch":C
    :sswitch_0
    move p1, v0

    .line 66
    goto :goto_0

    :sswitch_1
    move p1, v0

    .line 68
    goto :goto_0

    :sswitch_2
    move p1, v0

    .line 70
    goto :goto_0

    :sswitch_3
    move p1, v0

    .line 72
    goto :goto_0

    :sswitch_4
    move p1, v0

    .line 74
    goto :goto_0

    :sswitch_5
    move p1, v0

    .line 76
    goto :goto_0

    .line 78
    :sswitch_6
    const/16 p1, 0x63

    goto :goto_0

    :sswitch_7
    move p1, v1

    .line 80
    goto :goto_0

    :sswitch_8
    move p1, v1

    .line 82
    goto :goto_0

    :sswitch_9
    move p1, v1

    .line 84
    goto :goto_0

    :sswitch_a
    move p1, v1

    .line 86
    goto :goto_0

    :sswitch_b
    move p1, v2

    .line 88
    goto :goto_0

    :sswitch_c
    move p1, v2

    .line 90
    goto :goto_0

    :sswitch_d
    move p1, v2

    .line 92
    goto :goto_0

    :sswitch_e
    move p1, v2

    .line 94
    goto :goto_0

    .line 96
    :sswitch_f
    const/16 p1, 0x64

    goto :goto_0

    .line 98
    :sswitch_10
    const/16 p1, 0x6e

    goto :goto_0

    :sswitch_11
    move p1, v3

    .line 100
    goto :goto_0

    :sswitch_12
    move p1, v3

    .line 102
    goto :goto_0

    :sswitch_13
    move p1, v3

    .line 104
    goto :goto_0

    :sswitch_14
    move p1, v3

    .line 106
    goto :goto_0

    :sswitch_15
    move p1, v3

    .line 108
    goto :goto_0

    .line 110
    :sswitch_16
    const/16 p1, 0x78

    goto :goto_0

    :sswitch_17
    move p1, v3

    .line 112
    goto :goto_0

    :sswitch_18
    move p1, v4

    .line 114
    goto :goto_0

    :sswitch_19
    move p1, v4

    .line 116
    goto :goto_0

    :sswitch_1a
    move p1, v4

    .line 118
    goto :goto_0

    :sswitch_1b
    move p1, v4

    .line 120
    goto :goto_0

    :sswitch_1c
    move p1, v4

    .line 122
    goto :goto_0

    :sswitch_1d
    move p1, v0

    .line 124
    goto :goto_0

    :sswitch_1e
    move p1, v0

    .line 126
    goto :goto_0

    :sswitch_1f
    move p1, v0

    .line 128
    goto :goto_0

    :sswitch_20
    move p1, v0

    .line 130
    goto :goto_0

    :sswitch_21
    move p1, v0

    .line 132
    goto :goto_0

    :sswitch_22
    move p1, v0

    .line 134
    goto :goto_0

    .line 136
    :sswitch_23
    const/16 p1, 0x63

    goto :goto_0

    :sswitch_24
    move p1, v1

    .line 138
    goto :goto_0

    :sswitch_25
    move p1, v1

    .line 140
    goto :goto_0

    :sswitch_26
    move p1, v1

    .line 142
    goto :goto_0

    :sswitch_27
    move p1, v1

    .line 144
    goto :goto_0

    :sswitch_28
    move p1, v2

    .line 146
    goto :goto_0

    :sswitch_29
    move p1, v2

    .line 148
    goto :goto_0

    :sswitch_2a
    move p1, v2

    .line 150
    goto :goto_0

    :sswitch_2b
    move p1, v2

    .line 152
    goto :goto_0

    .line 154
    :sswitch_2c
    const/16 p1, 0x64

    goto :goto_0

    .line 156
    :sswitch_2d
    const/16 p1, 0x6e

    goto :goto_0

    :sswitch_2e
    move p1, v3

    .line 158
    goto :goto_0

    :sswitch_2f
    move p1, v3

    .line 160
    goto :goto_0

    :sswitch_30
    move p1, v3

    .line 162
    goto :goto_0

    :sswitch_31
    move p1, v3

    .line 164
    goto :goto_0

    :sswitch_32
    move p1, v3

    .line 166
    goto :goto_0

    :sswitch_33
    move p1, v3

    .line 168
    goto :goto_0

    :sswitch_34
    move p1, v4

    .line 170
    goto :goto_0

    :sswitch_35
    move p1, v4

    .line 172
    goto :goto_0

    :sswitch_36
    move p1, v4

    .line 174
    goto :goto_0

    :sswitch_37
    move p1, v4

    .line 176
    goto :goto_0

    .line 178
    :sswitch_38
    const/16 p1, 0x79

    goto :goto_0

    .line 180
    :sswitch_39
    const/16 p1, 0x79

    goto :goto_0

    :sswitch_3a
    move p1, v0

    .line 182
    goto :goto_0

    :sswitch_3b
    move p1, v0

    .line 184
    goto/16 :goto_0

    :sswitch_3c
    move p1, v0

    .line 186
    goto/16 :goto_0

    :sswitch_3d
    move p1, v0

    .line 188
    goto/16 :goto_0

    :sswitch_3e
    move p1, v0

    .line 190
    goto/16 :goto_0

    :sswitch_3f
    move p1, v0

    .line 192
    goto/16 :goto_0

    .line 194
    :sswitch_40
    const/16 p1, 0x63

    goto/16 :goto_0

    .line 196
    :sswitch_41
    const/16 p1, 0x63

    goto/16 :goto_0

    .line 198
    :sswitch_42
    const/16 p1, 0x63

    goto/16 :goto_0

    .line 200
    :sswitch_43
    const/16 p1, 0x63

    goto/16 :goto_0

    .line 202
    :sswitch_44
    const/16 p1, 0x63

    goto/16 :goto_0

    .line 204
    :sswitch_45
    const/16 p1, 0x63

    goto/16 :goto_0

    .line 206
    :sswitch_46
    const/16 p1, 0x63

    goto/16 :goto_0

    .line 208
    :sswitch_47
    const/16 p1, 0x63

    goto/16 :goto_0

    .line 210
    :sswitch_48
    const/16 p1, 0x64

    goto/16 :goto_0

    .line 212
    :sswitch_49
    const/16 p1, 0x64

    goto/16 :goto_0

    .line 214
    :sswitch_4a
    const/16 p1, 0x64

    goto/16 :goto_0

    .line 216
    :sswitch_4b
    const/16 p1, 0x64

    goto/16 :goto_0

    :sswitch_4c
    move p1, v1

    .line 218
    goto/16 :goto_0

    :sswitch_4d
    move p1, v1

    .line 220
    goto/16 :goto_0

    :sswitch_4e
    move p1, v1

    .line 222
    goto/16 :goto_0

    :sswitch_4f
    move p1, v1

    .line 224
    goto/16 :goto_0

    :sswitch_50
    move p1, v1

    .line 226
    goto/16 :goto_0

    :sswitch_51
    move p1, v1

    .line 228
    goto/16 :goto_0

    :sswitch_52
    move p1, v1

    .line 230
    goto/16 :goto_0

    :sswitch_53
    move p1, v1

    .line 232
    goto/16 :goto_0

    :sswitch_54
    move p1, v1

    .line 234
    goto/16 :goto_0

    :sswitch_55
    move p1, v1

    .line 236
    goto/16 :goto_0

    .line 238
    :sswitch_56
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 240
    :sswitch_57
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 242
    :sswitch_58
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 244
    :sswitch_59
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 246
    :sswitch_5a
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 248
    :sswitch_5b
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 250
    :sswitch_5c
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 252
    :sswitch_5d
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 254
    :sswitch_5e
    const/16 p1, 0x68

    goto/16 :goto_0

    .line 256
    :sswitch_5f
    const/16 p1, 0x68

    goto/16 :goto_0

    .line 258
    :sswitch_60
    const/16 p1, 0x68

    goto/16 :goto_0

    .line 260
    :sswitch_61
    const/16 p1, 0x68

    goto/16 :goto_0

    :sswitch_62
    move p1, v2

    .line 262
    goto/16 :goto_0

    :sswitch_63
    move p1, v2

    .line 264
    goto/16 :goto_0

    :sswitch_64
    move p1, v2

    .line 266
    goto/16 :goto_0

    :sswitch_65
    move p1, v2

    .line 268
    goto/16 :goto_0

    :sswitch_66
    move p1, v2

    .line 270
    goto/16 :goto_0

    :sswitch_67
    move p1, v2

    .line 272
    goto/16 :goto_0

    :sswitch_68
    move p1, v2

    .line 274
    goto/16 :goto_0

    :sswitch_69
    move p1, v2

    .line 276
    goto/16 :goto_0

    :sswitch_6a
    move p1, v2

    .line 278
    goto/16 :goto_0

    :sswitch_6b
    move p1, v2

    .line 280
    goto/16 :goto_0

    .line 282
    :sswitch_6c
    const/16 p1, 0x6a

    goto/16 :goto_0

    .line 284
    :sswitch_6d
    const/16 p1, 0x6a

    goto/16 :goto_0

    .line 286
    :sswitch_6e
    const/16 p1, 0x6b

    goto/16 :goto_0

    .line 288
    :sswitch_6f
    const/16 p1, 0x6b

    goto/16 :goto_0

    .line 290
    :sswitch_70
    const/16 p1, 0x6b

    goto/16 :goto_0

    .line 292
    :sswitch_71
    const/16 p1, 0x6c

    goto/16 :goto_0

    .line 294
    :sswitch_72
    const/16 p1, 0x6c

    goto/16 :goto_0

    .line 296
    :sswitch_73
    const/16 p1, 0x6c

    goto/16 :goto_0

    .line 298
    :sswitch_74
    const/16 p1, 0x6c

    goto/16 :goto_0

    .line 300
    :sswitch_75
    const/16 p1, 0x6c

    goto/16 :goto_0

    .line 302
    :sswitch_76
    const/16 p1, 0x6c

    goto/16 :goto_0

    .line 304
    :sswitch_77
    const/16 p1, 0x6c

    goto/16 :goto_0

    .line 306
    :sswitch_78
    const/16 p1, 0x6c

    goto/16 :goto_0

    .line 308
    :sswitch_79
    const/16 p1, 0x6c

    goto/16 :goto_0

    .line 310
    :sswitch_7a
    const/16 p1, 0x6c

    goto/16 :goto_0

    .line 312
    :sswitch_7b
    const/16 p1, 0x6e

    goto/16 :goto_0

    .line 314
    :sswitch_7c
    const/16 p1, 0x6e

    goto/16 :goto_0

    .line 316
    :sswitch_7d
    const/16 p1, 0x6e

    goto/16 :goto_0

    .line 318
    :sswitch_7e
    const/16 p1, 0x6e

    goto/16 :goto_0

    .line 320
    :sswitch_7f
    const/16 p1, 0x6e

    goto/16 :goto_0

    .line 322
    :sswitch_80
    const/16 p1, 0x6e

    goto/16 :goto_0

    :sswitch_81
    move p1, v3

    .line 324
    goto/16 :goto_0

    :sswitch_82
    move p1, v3

    .line 326
    goto/16 :goto_0

    :sswitch_83
    move p1, v3

    .line 328
    goto/16 :goto_0

    :sswitch_84
    move p1, v3

    .line 330
    goto/16 :goto_0

    :sswitch_85
    move p1, v3

    .line 332
    goto/16 :goto_0

    :sswitch_86
    move p1, v3

    .line 334
    goto/16 :goto_0

    .line 336
    :sswitch_87
    const/16 p1, 0x72

    goto/16 :goto_0

    .line 338
    :sswitch_88
    const/16 p1, 0x72

    goto/16 :goto_0

    .line 340
    :sswitch_89
    const/16 p1, 0x72

    goto/16 :goto_0

    .line 342
    :sswitch_8a
    const/16 p1, 0x72

    goto/16 :goto_0

    .line 344
    :sswitch_8b
    const/16 p1, 0x72

    goto/16 :goto_0

    .line 346
    :sswitch_8c
    const/16 p1, 0x72

    goto/16 :goto_0

    .line 348
    :sswitch_8d
    const/16 p1, 0x73

    goto/16 :goto_0

    .line 350
    :sswitch_8e
    const/16 p1, 0x73

    goto/16 :goto_0

    .line 352
    :sswitch_8f
    const/16 p1, 0x73

    goto/16 :goto_0

    .line 354
    :sswitch_90
    const/16 p1, 0x73

    goto/16 :goto_0

    .line 356
    :sswitch_91
    const/16 p1, 0x73

    goto/16 :goto_0

    .line 358
    :sswitch_92
    const/16 p1, 0x73

    goto/16 :goto_0

    .line 360
    :sswitch_93
    const/16 p1, 0x73

    goto/16 :goto_0

    .line 362
    :sswitch_94
    const/16 p1, 0x73

    goto/16 :goto_0

    .line 364
    :sswitch_95
    const/16 p1, 0x74

    goto/16 :goto_0

    .line 366
    :sswitch_96
    const/16 p1, 0x74

    goto/16 :goto_0

    .line 368
    :sswitch_97
    const/16 p1, 0x74

    goto/16 :goto_0

    .line 370
    :sswitch_98
    const/16 p1, 0x74

    goto/16 :goto_0

    .line 372
    :sswitch_99
    const/16 p1, 0x74

    goto/16 :goto_0

    .line 374
    :sswitch_9a
    const/16 p1, 0x74

    goto/16 :goto_0

    :sswitch_9b
    move p1, v4

    .line 376
    goto/16 :goto_0

    :sswitch_9c
    move p1, v4

    .line 378
    goto/16 :goto_0

    :sswitch_9d
    move p1, v4

    .line 380
    goto/16 :goto_0

    :sswitch_9e
    move p1, v4

    .line 382
    goto/16 :goto_0

    :sswitch_9f
    move p1, v4

    .line 384
    goto/16 :goto_0

    :sswitch_a0
    move p1, v4

    .line 386
    goto/16 :goto_0

    :sswitch_a1
    move p1, v4

    .line 388
    goto/16 :goto_0

    :sswitch_a2
    move p1, v4

    .line 390
    goto/16 :goto_0

    :sswitch_a3
    move p1, v4

    .line 392
    goto/16 :goto_0

    :sswitch_a4
    move p1, v4

    .line 394
    goto/16 :goto_0

    :sswitch_a5
    move p1, v4

    .line 396
    goto/16 :goto_0

    :sswitch_a6
    move p1, v4

    .line 398
    goto/16 :goto_0

    .line 400
    :sswitch_a7
    const/16 p1, 0x77

    goto/16 :goto_0

    .line 402
    :sswitch_a8
    const/16 p1, 0x77

    goto/16 :goto_0

    .line 404
    :sswitch_a9
    const/16 p1, 0x79

    goto/16 :goto_0

    .line 406
    :sswitch_aa
    const/16 p1, 0x79

    goto/16 :goto_0

    .line 408
    :sswitch_ab
    const/16 p1, 0x79

    goto/16 :goto_0

    .line 410
    :sswitch_ac
    const/16 p1, 0x7a

    goto/16 :goto_0

    .line 412
    :sswitch_ad
    const/16 p1, 0x7a

    goto/16 :goto_0

    .line 414
    :sswitch_ae
    const/16 p1, 0x7a

    goto/16 :goto_0

    .line 416
    :sswitch_af
    const/16 p1, 0x7a

    goto/16 :goto_0

    .line 418
    :sswitch_b0
    const/16 p1, 0x7a

    goto/16 :goto_0

    .line 420
    :sswitch_b1
    const/16 p1, 0x7a

    goto/16 :goto_0

    .line 422
    :sswitch_b2
    const/16 p1, 0x73

    goto/16 :goto_0

    .line 424
    :sswitch_b3
    const/16 p1, 0x62

    goto/16 :goto_0

    .line 426
    :sswitch_b4
    const/16 p1, 0x62

    goto/16 :goto_0

    .line 428
    :sswitch_b5
    const/16 p1, 0x62

    goto/16 :goto_0

    .line 430
    :sswitch_b6
    const/16 p1, 0x62

    goto/16 :goto_0

    :sswitch_b7
    move p1, v3

    .line 432
    goto/16 :goto_0

    .line 434
    :sswitch_b8
    const/16 p1, 0x63

    goto/16 :goto_0

    .line 436
    :sswitch_b9
    const/16 p1, 0x63

    goto/16 :goto_0

    .line 438
    :sswitch_ba
    const/16 p1, 0x64

    goto/16 :goto_0

    .line 440
    :sswitch_bb
    const/16 p1, 0x64

    goto/16 :goto_0

    .line 442
    :sswitch_bc
    const/16 p1, 0x64

    goto/16 :goto_0

    .line 444
    :sswitch_bd
    const/16 p1, 0x64

    goto/16 :goto_0

    .line 446
    :sswitch_be
    const/16 p1, 0x64

    goto/16 :goto_0

    :sswitch_bf
    move p1, v1

    .line 448
    goto/16 :goto_0

    .line 450
    :sswitch_c0
    const/16 p1, 0x66

    goto/16 :goto_0

    .line 452
    :sswitch_c1
    const/16 p1, 0x66

    goto/16 :goto_0

    .line 454
    :sswitch_c2
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 456
    :sswitch_c3
    const/16 p1, 0x67

    goto/16 :goto_0

    :sswitch_c4
    move p1, v2

    .line 458
    goto/16 :goto_0

    :sswitch_c5
    move p1, v2

    .line 460
    goto/16 :goto_0

    .line 462
    :sswitch_c6
    const/16 p1, 0x6b

    goto/16 :goto_0

    .line 464
    :sswitch_c7
    const/16 p1, 0x6b

    goto/16 :goto_0

    .line 466
    :sswitch_c8
    const/16 p1, 0x6c

    goto/16 :goto_0

    .line 468
    :sswitch_c9
    const/16 p1, 0x6c

    goto/16 :goto_0

    .line 470
    :sswitch_ca
    const/16 p1, 0x77

    goto/16 :goto_0

    .line 472
    :sswitch_cb
    const/16 p1, 0x6e

    goto/16 :goto_0

    .line 474
    :sswitch_cc
    const/16 p1, 0x6e

    goto/16 :goto_0

    :sswitch_cd
    move p1, v3

    .line 476
    goto/16 :goto_0

    :sswitch_ce
    move p1, v3

    .line 478
    goto/16 :goto_0

    :sswitch_cf
    move p1, v3

    .line 480
    goto/16 :goto_0

    .line 482
    :sswitch_d0
    const/16 p1, 0x70

    goto/16 :goto_0

    .line 484
    :sswitch_d1
    const/16 p1, 0x70

    goto/16 :goto_0

    .line 486
    :sswitch_d2
    const/16 p1, 0x74

    goto/16 :goto_0

    .line 488
    :sswitch_d3
    const/16 p1, 0x74

    goto/16 :goto_0

    .line 490
    :sswitch_d4
    const/16 p1, 0x74

    goto/16 :goto_0

    .line 492
    :sswitch_d5
    const/16 p1, 0x74

    goto/16 :goto_0

    :sswitch_d6
    move p1, v4

    .line 494
    goto/16 :goto_0

    :sswitch_d7
    move p1, v4

    .line 496
    goto/16 :goto_0

    .line 498
    :sswitch_d8
    const/16 p1, 0x79

    goto/16 :goto_0

    .line 500
    :sswitch_d9
    const/16 p1, 0x76

    goto/16 :goto_0

    .line 502
    :sswitch_da
    const/16 p1, 0x79

    goto/16 :goto_0

    .line 504
    :sswitch_db
    const/16 p1, 0x79

    goto/16 :goto_0

    .line 506
    :sswitch_dc
    const/16 p1, 0x7a

    goto/16 :goto_0

    .line 508
    :sswitch_dd
    const/16 p1, 0x7a

    goto/16 :goto_0

    .line 510
    :sswitch_de
    const/16 p1, 0x77

    goto/16 :goto_0

    :sswitch_df
    move p1, v0

    .line 512
    goto/16 :goto_0

    :sswitch_e0
    move p1, v0

    .line 514
    goto/16 :goto_0

    :sswitch_e1
    move p1, v2

    .line 516
    goto/16 :goto_0

    :sswitch_e2
    move p1, v2

    .line 518
    goto/16 :goto_0

    :sswitch_e3
    move p1, v3

    .line 520
    goto/16 :goto_0

    :sswitch_e4
    move p1, v3

    .line 522
    goto/16 :goto_0

    :sswitch_e5
    move p1, v4

    .line 524
    goto/16 :goto_0

    :sswitch_e6
    move p1, v4

    .line 526
    goto/16 :goto_0

    :sswitch_e7
    move p1, v4

    .line 528
    goto/16 :goto_0

    :sswitch_e8
    move p1, v4

    .line 530
    goto/16 :goto_0

    :sswitch_e9
    move p1, v4

    .line 532
    goto/16 :goto_0

    :sswitch_ea
    move p1, v4

    .line 534
    goto/16 :goto_0

    :sswitch_eb
    move p1, v4

    .line 536
    goto/16 :goto_0

    :sswitch_ec
    move p1, v4

    .line 538
    goto/16 :goto_0

    :sswitch_ed
    move p1, v4

    .line 540
    goto/16 :goto_0

    :sswitch_ee
    move p1, v4

    .line 542
    goto/16 :goto_0

    :sswitch_ef
    move p1, v0

    .line 544
    goto/16 :goto_0

    :sswitch_f0
    move p1, v0

    .line 546
    goto/16 :goto_0

    :sswitch_f1
    move p1, v0

    .line 548
    goto/16 :goto_0

    :sswitch_f2
    move p1, v0

    .line 550
    goto/16 :goto_0

    .line 552
    :sswitch_f3
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 554
    :sswitch_f4
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 556
    :sswitch_f5
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 558
    :sswitch_f6
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 560
    :sswitch_f7
    const/16 p1, 0x6b

    goto/16 :goto_0

    .line 562
    :sswitch_f8
    const/16 p1, 0x6b

    goto/16 :goto_0

    :sswitch_f9
    move p1, v3

    .line 564
    goto/16 :goto_0

    :sswitch_fa
    move p1, v3

    .line 566
    goto/16 :goto_0

    :sswitch_fb
    move p1, v3

    .line 568
    goto/16 :goto_0

    :sswitch_fc
    move p1, v3

    .line 570
    goto/16 :goto_0

    .line 572
    :sswitch_fd
    const/16 p1, 0x6a

    goto/16 :goto_0

    .line 574
    :sswitch_fe
    const/16 p1, 0x64

    goto/16 :goto_0

    .line 576
    :sswitch_ff
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 578
    :sswitch_100
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 580
    :sswitch_101
    const/16 p1, 0x77

    goto/16 :goto_0

    .line 582
    :sswitch_102
    const/16 p1, 0x6e

    goto/16 :goto_0

    .line 584
    :sswitch_103
    const/16 p1, 0x6e

    goto/16 :goto_0

    :sswitch_104
    move p1, v0

    .line 586
    goto/16 :goto_0

    :sswitch_105
    move p1, v0

    .line 588
    goto/16 :goto_0

    :sswitch_106
    move p1, v3

    .line 590
    goto/16 :goto_0

    :sswitch_107
    move p1, v3

    .line 592
    goto/16 :goto_0

    :sswitch_108
    move p1, v0

    .line 594
    goto/16 :goto_0

    :sswitch_109
    move p1, v0

    .line 596
    goto/16 :goto_0

    :sswitch_10a
    move p1, v0

    .line 598
    goto/16 :goto_0

    :sswitch_10b
    move p1, v0

    .line 600
    goto/16 :goto_0

    :sswitch_10c
    move p1, v1

    .line 602
    goto/16 :goto_0

    :sswitch_10d
    move p1, v1

    .line 604
    goto/16 :goto_0

    :sswitch_10e
    move p1, v1

    .line 606
    goto/16 :goto_0

    :sswitch_10f
    move p1, v1

    .line 608
    goto/16 :goto_0

    :sswitch_110
    move p1, v2

    .line 610
    goto/16 :goto_0

    :sswitch_111
    move p1, v2

    .line 612
    goto/16 :goto_0

    :sswitch_112
    move p1, v2

    .line 614
    goto/16 :goto_0

    :sswitch_113
    move p1, v2

    .line 616
    goto/16 :goto_0

    :sswitch_114
    move p1, v3

    .line 618
    goto/16 :goto_0

    :sswitch_115
    move p1, v3

    .line 620
    goto/16 :goto_0

    :sswitch_116
    move p1, v3

    .line 622
    goto/16 :goto_0

    :sswitch_117
    move p1, v3

    .line 624
    goto/16 :goto_0

    .line 626
    :sswitch_118
    const/16 p1, 0x72

    goto/16 :goto_0

    .line 628
    :sswitch_119
    const/16 p1, 0x72

    goto/16 :goto_0

    .line 630
    :sswitch_11a
    const/16 p1, 0x72

    goto/16 :goto_0

    .line 632
    :sswitch_11b
    const/16 p1, 0x72

    goto/16 :goto_0

    :sswitch_11c
    move p1, v4

    .line 634
    goto/16 :goto_0

    :sswitch_11d
    move p1, v4

    .line 636
    goto/16 :goto_0

    :sswitch_11e
    move p1, v4

    .line 638
    goto/16 :goto_0

    :sswitch_11f
    move p1, v4

    .line 640
    goto/16 :goto_0

    .line 642
    :sswitch_120
    const/16 p1, 0x73

    goto/16 :goto_0

    .line 644
    :sswitch_121
    const/16 p1, 0x73

    goto/16 :goto_0

    .line 646
    :sswitch_122
    const/16 p1, 0x74

    goto/16 :goto_0

    .line 648
    :sswitch_123
    const/16 p1, 0x74

    goto/16 :goto_0

    .line 650
    :sswitch_124
    const/16 p1, 0x79

    goto/16 :goto_0

    .line 652
    :sswitch_125
    const/16 p1, 0x79

    goto/16 :goto_0

    .line 654
    :sswitch_126
    const/16 p1, 0x68

    goto/16 :goto_0

    .line 656
    :sswitch_127
    const/16 p1, 0x68

    goto/16 :goto_0

    .line 658
    :sswitch_128
    const/16 p1, 0x7a

    goto/16 :goto_0

    .line 660
    :sswitch_129
    const/16 p1, 0x7a

    goto/16 :goto_0

    :sswitch_12a
    move p1, v0

    .line 662
    goto/16 :goto_0

    :sswitch_12b
    move p1, v0

    .line 664
    goto/16 :goto_0

    :sswitch_12c
    move p1, v1

    .line 666
    goto/16 :goto_0

    :sswitch_12d
    move p1, v1

    .line 668
    goto/16 :goto_0

    :sswitch_12e
    move p1, v3

    .line 670
    goto/16 :goto_0

    :sswitch_12f
    move p1, v3

    .line 672
    goto/16 :goto_0

    :sswitch_130
    move p1, v3

    .line 674
    goto/16 :goto_0

    :sswitch_131
    move p1, v3

    .line 676
    goto/16 :goto_0

    :sswitch_132
    move p1, v3

    .line 678
    goto/16 :goto_0

    :sswitch_133
    move p1, v3

    .line 680
    goto/16 :goto_0

    :sswitch_134
    move p1, v3

    .line 682
    goto/16 :goto_0

    :sswitch_135
    move p1, v3

    .line 684
    goto/16 :goto_0

    .line 686
    :sswitch_136
    const/16 p1, 0x79

    goto/16 :goto_0

    .line 688
    :sswitch_137
    const/16 p1, 0x79

    goto/16 :goto_0

    :sswitch_138
    move p1, v0

    .line 690
    goto/16 :goto_0

    .line 692
    :sswitch_139
    const/16 p1, 0x62

    goto/16 :goto_0

    .line 694
    :sswitch_13a
    const/16 p1, 0x63

    goto/16 :goto_0

    .line 696
    :sswitch_13b
    const/16 p1, 0x64

    goto/16 :goto_0

    :sswitch_13c
    move p1, v1

    .line 698
    goto/16 :goto_0

    .line 700
    :sswitch_13d
    const/16 p1, 0x66

    goto/16 :goto_0

    .line 702
    :sswitch_13e
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 704
    :sswitch_13f
    const/16 p1, 0x68

    goto/16 :goto_0

    :sswitch_140
    move p1, v2

    .line 706
    goto/16 :goto_0

    .line 708
    :sswitch_141
    const/16 p1, 0x6a

    goto/16 :goto_0

    .line 710
    :sswitch_142
    const/16 p1, 0x6b

    goto/16 :goto_0

    .line 712
    :sswitch_143
    const/16 p1, 0x6c

    goto/16 :goto_0

    .line 714
    :sswitch_144
    const/16 p1, 0x6d

    goto/16 :goto_0

    .line 716
    :sswitch_145
    const/16 p1, 0x6e

    goto/16 :goto_0

    :sswitch_146
    move p1, v3

    .line 718
    goto/16 :goto_0

    .line 720
    :sswitch_147
    const/16 p1, 0x70

    goto/16 :goto_0

    .line 722
    :sswitch_148
    const/16 p1, 0x71

    goto/16 :goto_0

    .line 724
    :sswitch_149
    const/16 p1, 0x72

    goto/16 :goto_0

    .line 726
    :sswitch_14a
    const/16 p1, 0x73

    goto/16 :goto_0

    .line 728
    :sswitch_14b
    const/16 p1, 0x74

    goto/16 :goto_0

    :sswitch_14c
    move p1, v4

    .line 730
    goto/16 :goto_0

    .line 732
    :sswitch_14d
    const/16 p1, 0x76

    goto/16 :goto_0

    .line 734
    :sswitch_14e
    const/16 p1, 0x77

    goto/16 :goto_0

    .line 736
    :sswitch_14f
    const/16 p1, 0x78

    goto/16 :goto_0

    .line 738
    :sswitch_150
    const/16 p1, 0x79

    goto/16 :goto_0

    .line 740
    :sswitch_151
    const/16 p1, 0x7a

    goto/16 :goto_0

    .line 742
    :sswitch_152
    const/16 p1, 0x430

    goto/16 :goto_0

    .line 744
    :sswitch_153
    const/16 p1, 0x431

    goto/16 :goto_0

    .line 746
    :sswitch_154
    const/16 p1, 0x432

    goto/16 :goto_0

    .line 748
    :sswitch_155
    const/16 p1, 0x433

    goto/16 :goto_0

    .line 750
    :sswitch_156
    const/16 p1, 0x491

    goto/16 :goto_0

    .line 752
    :sswitch_157
    const/16 p1, 0x434

    goto/16 :goto_0

    .line 754
    :sswitch_158
    const/16 p1, 0x435

    goto/16 :goto_0

    .line 756
    :sswitch_159
    const/16 p1, 0x451

    goto/16 :goto_0

    .line 758
    :sswitch_15a
    const/16 p1, 0x454

    goto/16 :goto_0

    .line 760
    :sswitch_15b
    const/16 p1, 0x436

    goto/16 :goto_0

    .line 762
    :sswitch_15c
    const/16 p1, 0x437

    goto/16 :goto_0

    .line 764
    :sswitch_15d
    const/16 p1, 0x438

    goto/16 :goto_0

    .line 766
    :sswitch_15e
    const/16 p1, 0x456

    goto/16 :goto_0

    .line 768
    :sswitch_15f
    const/16 p1, 0x457

    goto/16 :goto_0

    .line 770
    :sswitch_160
    const/16 p1, 0x439

    goto/16 :goto_0

    .line 772
    :sswitch_161
    const/16 p1, 0x43a

    goto/16 :goto_0

    .line 774
    :sswitch_162
    const/16 p1, 0x43b

    goto/16 :goto_0

    .line 776
    :sswitch_163
    const/16 p1, 0x43c

    goto/16 :goto_0

    .line 778
    :sswitch_164
    const/16 p1, 0x43d

    goto/16 :goto_0

    .line 780
    :sswitch_165
    const/16 p1, 0x43e

    goto/16 :goto_0

    .line 782
    :sswitch_166
    const/16 p1, 0x43f

    goto/16 :goto_0

    .line 784
    :sswitch_167
    const/16 p1, 0x440

    goto/16 :goto_0

    .line 786
    :sswitch_168
    const/16 p1, 0x441

    goto/16 :goto_0

    .line 788
    :sswitch_169
    const/16 p1, 0x442

    goto/16 :goto_0

    .line 790
    :sswitch_16a
    const/16 p1, 0x443

    goto/16 :goto_0

    .line 792
    :sswitch_16b
    const/16 p1, 0x444

    goto/16 :goto_0

    .line 794
    :sswitch_16c
    const/16 p1, 0x445

    goto/16 :goto_0

    .line 796
    :sswitch_16d
    const/16 p1, 0x446

    goto/16 :goto_0

    .line 798
    :sswitch_16e
    const/16 p1, 0x447

    goto/16 :goto_0

    .line 800
    :sswitch_16f
    const/16 p1, 0x448

    goto/16 :goto_0

    .line 802
    :sswitch_170
    const/16 p1, 0x449

    goto/16 :goto_0

    .line 804
    :sswitch_171
    const/16 p1, 0x44a

    goto/16 :goto_0

    .line 806
    :sswitch_172
    const/16 p1, 0x44b

    goto/16 :goto_0

    .line 808
    :sswitch_173
    const/16 p1, 0x44c

    goto/16 :goto_0

    .line 810
    :sswitch_174
    const/16 p1, 0x44d

    goto/16 :goto_0

    .line 812
    :sswitch_175
    const/16 p1, 0x44e

    goto/16 :goto_0

    .line 814
    :sswitch_176
    const/16 p1, 0x44f

    goto/16 :goto_0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_138
        0x42 -> :sswitch_139
        0x43 -> :sswitch_13a
        0x44 -> :sswitch_13b
        0x45 -> :sswitch_13c
        0x46 -> :sswitch_13d
        0x47 -> :sswitch_13e
        0x48 -> :sswitch_13f
        0x49 -> :sswitch_140
        0x4a -> :sswitch_141
        0x4b -> :sswitch_142
        0x4c -> :sswitch_143
        0x4d -> :sswitch_144
        0x4e -> :sswitch_145
        0x4f -> :sswitch_146
        0x50 -> :sswitch_147
        0x51 -> :sswitch_148
        0x52 -> :sswitch_149
        0x53 -> :sswitch_14a
        0x54 -> :sswitch_14b
        0x55 -> :sswitch_14c
        0x56 -> :sswitch_14d
        0x57 -> :sswitch_14e
        0x58 -> :sswitch_14f
        0x59 -> :sswitch_150
        0x5a -> :sswitch_151
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_1
        0xc2 -> :sswitch_2
        0xc3 -> :sswitch_3
        0xc4 -> :sswitch_4
        0xc5 -> :sswitch_5
        0xc7 -> :sswitch_6
        0xc8 -> :sswitch_7
        0xc9 -> :sswitch_8
        0xca -> :sswitch_9
        0xcb -> :sswitch_a
        0xcc -> :sswitch_b
        0xcd -> :sswitch_c
        0xce -> :sswitch_d
        0xcf -> :sswitch_e
        0xd0 -> :sswitch_f
        0xd1 -> :sswitch_10
        0xd2 -> :sswitch_11
        0xd3 -> :sswitch_12
        0xd4 -> :sswitch_13
        0xd5 -> :sswitch_14
        0xd6 -> :sswitch_15
        0xd7 -> :sswitch_16
        0xd8 -> :sswitch_17
        0xd9 -> :sswitch_18
        0xda -> :sswitch_19
        0xdb -> :sswitch_1a
        0xdc -> :sswitch_1b
        0xdd -> :sswitch_1c
        0xe0 -> :sswitch_1d
        0xe1 -> :sswitch_1e
        0xe2 -> :sswitch_1f
        0xe3 -> :sswitch_20
        0xe4 -> :sswitch_21
        0xe5 -> :sswitch_22
        0xe7 -> :sswitch_23
        0xe8 -> :sswitch_24
        0xe9 -> :sswitch_25
        0xea -> :sswitch_26
        0xeb -> :sswitch_27
        0xec -> :sswitch_28
        0xed -> :sswitch_29
        0xee -> :sswitch_2a
        0xef -> :sswitch_2b
        0xf0 -> :sswitch_2c
        0xf1 -> :sswitch_2d
        0xf2 -> :sswitch_2e
        0xf3 -> :sswitch_2f
        0xf4 -> :sswitch_30
        0xf5 -> :sswitch_31
        0xf6 -> :sswitch_32
        0xf8 -> :sswitch_33
        0xf9 -> :sswitch_34
        0xfa -> :sswitch_35
        0xfb -> :sswitch_36
        0xfc -> :sswitch_37
        0xfd -> :sswitch_38
        0xff -> :sswitch_39
        0x100 -> :sswitch_3a
        0x101 -> :sswitch_3b
        0x102 -> :sswitch_3c
        0x103 -> :sswitch_3d
        0x104 -> :sswitch_3e
        0x105 -> :sswitch_3f
        0x106 -> :sswitch_40
        0x107 -> :sswitch_41
        0x108 -> :sswitch_42
        0x109 -> :sswitch_43
        0x10a -> :sswitch_44
        0x10b -> :sswitch_45
        0x10c -> :sswitch_46
        0x10d -> :sswitch_47
        0x10e -> :sswitch_48
        0x10f -> :sswitch_49
        0x110 -> :sswitch_4a
        0x111 -> :sswitch_4b
        0x112 -> :sswitch_4c
        0x113 -> :sswitch_4d
        0x114 -> :sswitch_4e
        0x115 -> :sswitch_4f
        0x116 -> :sswitch_50
        0x117 -> :sswitch_51
        0x118 -> :sswitch_52
        0x119 -> :sswitch_53
        0x11a -> :sswitch_54
        0x11b -> :sswitch_55
        0x11c -> :sswitch_56
        0x11d -> :sswitch_57
        0x11e -> :sswitch_58
        0x11f -> :sswitch_59
        0x120 -> :sswitch_5a
        0x121 -> :sswitch_5b
        0x122 -> :sswitch_5c
        0x123 -> :sswitch_5d
        0x124 -> :sswitch_5e
        0x125 -> :sswitch_5f
        0x126 -> :sswitch_60
        0x127 -> :sswitch_61
        0x128 -> :sswitch_62
        0x129 -> :sswitch_63
        0x12a -> :sswitch_64
        0x12b -> :sswitch_65
        0x12c -> :sswitch_66
        0x12d -> :sswitch_67
        0x12e -> :sswitch_68
        0x12f -> :sswitch_69
        0x130 -> :sswitch_6a
        0x131 -> :sswitch_6b
        0x134 -> :sswitch_6c
        0x135 -> :sswitch_6d
        0x136 -> :sswitch_6e
        0x137 -> :sswitch_6f
        0x138 -> :sswitch_70
        0x139 -> :sswitch_71
        0x13a -> :sswitch_72
        0x13b -> :sswitch_73
        0x13c -> :sswitch_74
        0x13d -> :sswitch_75
        0x13e -> :sswitch_76
        0x13f -> :sswitch_77
        0x140 -> :sswitch_78
        0x141 -> :sswitch_79
        0x142 -> :sswitch_7a
        0x143 -> :sswitch_7b
        0x144 -> :sswitch_7c
        0x145 -> :sswitch_7d
        0x146 -> :sswitch_7e
        0x147 -> :sswitch_7f
        0x148 -> :sswitch_80
        0x14c -> :sswitch_81
        0x14d -> :sswitch_82
        0x14e -> :sswitch_83
        0x14f -> :sswitch_84
        0x150 -> :sswitch_85
        0x151 -> :sswitch_86
        0x154 -> :sswitch_87
        0x155 -> :sswitch_88
        0x156 -> :sswitch_89
        0x157 -> :sswitch_8a
        0x158 -> :sswitch_8b
        0x159 -> :sswitch_8c
        0x15a -> :sswitch_8d
        0x15b -> :sswitch_8e
        0x15c -> :sswitch_8f
        0x15d -> :sswitch_90
        0x15e -> :sswitch_91
        0x15f -> :sswitch_92
        0x160 -> :sswitch_93
        0x161 -> :sswitch_94
        0x162 -> :sswitch_95
        0x163 -> :sswitch_96
        0x164 -> :sswitch_97
        0x165 -> :sswitch_98
        0x166 -> :sswitch_99
        0x167 -> :sswitch_9a
        0x168 -> :sswitch_9b
        0x169 -> :sswitch_9c
        0x16a -> :sswitch_9d
        0x16b -> :sswitch_9e
        0x16c -> :sswitch_9f
        0x16d -> :sswitch_a0
        0x16e -> :sswitch_a1
        0x16f -> :sswitch_a2
        0x170 -> :sswitch_a3
        0x171 -> :sswitch_a4
        0x172 -> :sswitch_a5
        0x173 -> :sswitch_a6
        0x174 -> :sswitch_a7
        0x175 -> :sswitch_a8
        0x176 -> :sswitch_a9
        0x177 -> :sswitch_aa
        0x178 -> :sswitch_ab
        0x179 -> :sswitch_ac
        0x17a -> :sswitch_ad
        0x17b -> :sswitch_ae
        0x17c -> :sswitch_af
        0x17d -> :sswitch_b0
        0x17e -> :sswitch_b1
        0x17f -> :sswitch_b2
        0x180 -> :sswitch_b3
        0x181 -> :sswitch_b4
        0x182 -> :sswitch_b5
        0x183 -> :sswitch_b6
        0x186 -> :sswitch_b7
        0x187 -> :sswitch_b8
        0x188 -> :sswitch_b9
        0x189 -> :sswitch_ba
        0x18a -> :sswitch_bb
        0x18b -> :sswitch_bc
        0x18c -> :sswitch_bd
        0x18d -> :sswitch_be
        0x190 -> :sswitch_bf
        0x191 -> :sswitch_c0
        0x192 -> :sswitch_c1
        0x193 -> :sswitch_c2
        0x194 -> :sswitch_c3
        0x196 -> :sswitch_c4
        0x197 -> :sswitch_c5
        0x198 -> :sswitch_c6
        0x199 -> :sswitch_c7
        0x19a -> :sswitch_c8
        0x19b -> :sswitch_c9
        0x19c -> :sswitch_ca
        0x19d -> :sswitch_cb
        0x19e -> :sswitch_cc
        0x19f -> :sswitch_cd
        0x1a0 -> :sswitch_ce
        0x1a1 -> :sswitch_cf
        0x1a4 -> :sswitch_d0
        0x1a5 -> :sswitch_d1
        0x1ab -> :sswitch_d2
        0x1ac -> :sswitch_d3
        0x1ad -> :sswitch_d4
        0x1ae -> :sswitch_d5
        0x1af -> :sswitch_d6
        0x1b0 -> :sswitch_d7
        0x1b1 -> :sswitch_d8
        0x1b2 -> :sswitch_d9
        0x1b3 -> :sswitch_da
        0x1b4 -> :sswitch_db
        0x1b5 -> :sswitch_dc
        0x1b6 -> :sswitch_dd
        0x1bf -> :sswitch_de
        0x1cd -> :sswitch_df
        0x1ce -> :sswitch_e0
        0x1cf -> :sswitch_e1
        0x1d0 -> :sswitch_e2
        0x1d1 -> :sswitch_e3
        0x1d2 -> :sswitch_e4
        0x1d3 -> :sswitch_e5
        0x1d4 -> :sswitch_e6
        0x1d5 -> :sswitch_e7
        0x1d6 -> :sswitch_e8
        0x1d7 -> :sswitch_e9
        0x1d8 -> :sswitch_ea
        0x1d9 -> :sswitch_eb
        0x1da -> :sswitch_ec
        0x1db -> :sswitch_ed
        0x1dc -> :sswitch_ee
        0x1de -> :sswitch_ef
        0x1df -> :sswitch_f0
        0x1e0 -> :sswitch_f1
        0x1e1 -> :sswitch_f2
        0x1e4 -> :sswitch_f3
        0x1e5 -> :sswitch_f4
        0x1e6 -> :sswitch_f5
        0x1e7 -> :sswitch_f6
        0x1e8 -> :sswitch_f7
        0x1e9 -> :sswitch_f8
        0x1ea -> :sswitch_f9
        0x1eb -> :sswitch_fa
        0x1ec -> :sswitch_fb
        0x1ed -> :sswitch_fc
        0x1f0 -> :sswitch_fd
        0x1f2 -> :sswitch_fe
        0x1f4 -> :sswitch_ff
        0x1f5 -> :sswitch_100
        0x1f7 -> :sswitch_101
        0x1f8 -> :sswitch_102
        0x1f9 -> :sswitch_103
        0x1fa -> :sswitch_104
        0x1fb -> :sswitch_105
        0x1fe -> :sswitch_106
        0x1ff -> :sswitch_107
        0x200 -> :sswitch_108
        0x201 -> :sswitch_109
        0x202 -> :sswitch_10a
        0x203 -> :sswitch_10b
        0x204 -> :sswitch_10c
        0x205 -> :sswitch_10d
        0x206 -> :sswitch_10e
        0x207 -> :sswitch_10f
        0x208 -> :sswitch_110
        0x209 -> :sswitch_111
        0x20a -> :sswitch_112
        0x20b -> :sswitch_113
        0x20c -> :sswitch_114
        0x20d -> :sswitch_115
        0x20e -> :sswitch_116
        0x20f -> :sswitch_117
        0x210 -> :sswitch_118
        0x211 -> :sswitch_119
        0x212 -> :sswitch_11a
        0x213 -> :sswitch_11b
        0x214 -> :sswitch_11c
        0x215 -> :sswitch_11d
        0x216 -> :sswitch_11e
        0x217 -> :sswitch_11f
        0x218 -> :sswitch_120
        0x219 -> :sswitch_121
        0x21a -> :sswitch_122
        0x21b -> :sswitch_123
        0x21c -> :sswitch_124
        0x21d -> :sswitch_125
        0x21e -> :sswitch_126
        0x21f -> :sswitch_127
        0x224 -> :sswitch_128
        0x225 -> :sswitch_129
        0x226 -> :sswitch_12a
        0x227 -> :sswitch_12b
        0x228 -> :sswitch_12c
        0x229 -> :sswitch_12d
        0x22a -> :sswitch_12e
        0x22b -> :sswitch_12f
        0x22c -> :sswitch_130
        0x22d -> :sswitch_131
        0x22e -> :sswitch_132
        0x22f -> :sswitch_133
        0x230 -> :sswitch_134
        0x231 -> :sswitch_135
        0x232 -> :sswitch_136
        0x233 -> :sswitch_137
        0x401 -> :sswitch_159
        0x404 -> :sswitch_15a
        0x406 -> :sswitch_15e
        0x407 -> :sswitch_15f
        0x410 -> :sswitch_152
        0x411 -> :sswitch_153
        0x412 -> :sswitch_154
        0x413 -> :sswitch_155
        0x414 -> :sswitch_157
        0x415 -> :sswitch_158
        0x416 -> :sswitch_15b
        0x417 -> :sswitch_15c
        0x418 -> :sswitch_15d
        0x419 -> :sswitch_160
        0x41a -> :sswitch_161
        0x41b -> :sswitch_162
        0x41c -> :sswitch_163
        0x41d -> :sswitch_164
        0x41e -> :sswitch_165
        0x41f -> :sswitch_166
        0x420 -> :sswitch_167
        0x421 -> :sswitch_168
        0x422 -> :sswitch_169
        0x423 -> :sswitch_16a
        0x424 -> :sswitch_16b
        0x425 -> :sswitch_16c
        0x426 -> :sswitch_16d
        0x427 -> :sswitch_16e
        0x428 -> :sswitch_16f
        0x429 -> :sswitch_170
        0x42a -> :sswitch_171
        0x42b -> :sswitch_172
        0x42c -> :sswitch_173
        0x42d -> :sswitch_174
        0x42e -> :sswitch_175
        0x42f -> :sswitch_176
        0x490 -> :sswitch_156
    .end sparse-switch
.end method

.method public f(C)B
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 822
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 823
    add-int/lit8 v0, p1, -0x30

    int-to-byte v0, v0

    .line 835
    :goto_0
    return v0

    .line 824
    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_1

    .line 825
    sget-object v0, Lcom/android/dialer/dialpad/j;->a:[C

    add-int/lit8 v1, p1, -0x61

    aget-char v0, v0, v1

    add-int/lit8 v0, v0, -0x30

    int-to-byte v0, v0

    goto :goto_0

    .line 826
    :cond_1
    const/16 v0, 0x430

    if-lt p1, v0, :cond_2

    const/16 v0, 0x44f

    if-gt p1, v0, :cond_2

    .line 827
    sget-object v0, Lcom/android/dialer/dialpad/j;->CYRILLIC_LETTERS_TO_DIGITS:[C

    add-int/lit16 v1, p1, -0x430

    aget-char v0, v0, v1

    add-int/lit8 v0, v0, -0x30

    int-to-byte v0, v0

    goto :goto_0

    .line 828
    :cond_2
    const/16 v0, 0x491

    if-ne p1, v0, :cond_3

    .line 829
    const/4 v0, 0x2

    goto :goto_0

    .line 830
    :cond_3
    const/16 v0, 0x451

    if-eq p1, v0, :cond_4

    const/16 v0, 0x454

    if-ne p1, v0, :cond_5

    .line 831
    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    .line 832
    :cond_5
    const/16 v0, 0x456

    if-eq p1, v0, :cond_6

    const/16 v0, 0x457

    if-ne p1, v0, :cond_7

    .line 833
    :cond_6
    const/4 v0, 0x4

    goto :goto_0

    .line 835
    :cond_7
    const/4 v0, -0x1

    goto :goto_0
.end method 
