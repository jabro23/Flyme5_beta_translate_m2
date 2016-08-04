.class public Lcom/meizu/common/util/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# static fields
.field public static final FORMAT_TYPE_APP_VERSIONS:I = 0x7

.field public static final FORMAT_TYPE_CALENDAR_APPWIDGET:I = 0x8

.field public static final FORMAT_TYPE_CALL_LOGS:I = 0x5

.field public static final FORMAT_TYPE_CALL_LOGS_NEW:I = 0xb

.field public static final FORMAT_TYPE_CONTACTS_BIRTHDAY_MD:I = 0xa

.field public static final FORMAT_TYPE_CONTACTS_BIRTHDAY_YMD:I = 0x9

.field public static final FORMAT_TYPE_EMAIL:I = 0x2

.field public static final FORMAT_TYPE_MMS:I = 0x1

.field public static final FORMAT_TYPE_NORMAL:I = 0x0

.field public static final FORMAT_TYPE_PERSONAL_FOOTPRINT:I = 0x6

.field public static final FORMAT_TYPE_RECORDER:I = 0x3

.field public static final FORMAT_TYPE_RECORDER_PHONE:I = 0x4

.field private static FormatResultLast:Ljava/lang/String; = null

.field private static FormatTypeLast:I = 0x0

.field private static final MILLISECONDS_OF_HOUR:I = 0x36ee80

.field private static NowMillisLast:J

.field private static NowTimeLast:Landroid/text/format/Time;

.field private static ThenTimeLast:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 140
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/meizu/common/util/DateTimeUtils;->NowMillisLast:J

    .line 141
    const/4 v0, -0x1

    sput v0, Lcom/meizu/common/util/DateTimeUtils;->FormatTypeLast:I

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTimeStampString(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J
    .param p3, "type"    # I

    .prologue
    .line 157
    new-instance v22, Landroid/text/format/Time;

    invoke-direct/range {v22 .. v22}, Landroid/text/format/Time;-><init>()V

    .line 158
    .local v22, "then":Landroid/text/format/Time;
    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 159
    const/4 v12, 0x0

    .line 160
    .local v12, "now":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 161
    .local v13, "nowmillis":Ljava/lang/Long;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    .line 163
    .local v6, "is24":Z
    sget v24, Lcom/meizu/common/util/DateTimeUtils;->FormatTypeLast:I

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 v19, 0x1

    .line 164
    .local v19, "sameType":Z
    :goto_0
    sput p3, Lcom/meizu/common/util/DateTimeUtils;->FormatTypeLast:I

    .line 166
    const/16 v18, 0x0

    .line 167
    .local v18, "sameNowDay":Z
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    if-nez v24, :cond_3

    .line 168
    const/16 v18, 0x0

    .line 177
    :goto_1
    if-nez v18, :cond_5

    .line 178
    new-instance v12, Landroid/text/format/Time;

    .end local v12    # "now":Landroid/text/format/Time;
    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 179
    .restart local v12    # "now":Landroid/text/format/Time;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 181
    sput-object v12, Lcom/meizu/common/util/DateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    .line 182
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    iget v0, v12, Landroid/text/format/Time;->hour:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x3c

    mul-int/lit8 v26, v26, 0x3c

    move/from16 v0, v26

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    iget v0, v12, Landroid/text/format/Time;->minute:I

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x3c

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    add-int v26, v26, v27

    iget v0, v12, Landroid/text/format/Time;->second:I

    move/from16 v27, v0

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    sput-wide v24, Lcom/meizu/common/util/DateTimeUtils;->NowMillisLast:J

    .line 187
    :goto_2
    const/16 v20, 0x0

    .line 188
    .local v20, "sameWhenDay":Z
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    if-eqz v24, :cond_0

    .line 189
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    const/16 v20, 0x1

    .line 192
    :cond_0
    :goto_3
    const/16 v21, 0x0

    .line 193
    .local v21, "sameWhenMonth":Z
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    if-eqz v24, :cond_1

    .line 194
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    const/16 v21, 0x1

    .line 197
    :cond_1
    :goto_4
    sput-object v22, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    .line 198
    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v12, Landroid/text/format/Time;->weekDay:I

    move/from16 v25, v0

    sub-int v23, v24, v25

    .line 199
    .local v23, "weekStart":I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v24, v0

    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_8

    const/4 v7, 0x1

    .line 200
    .local v7, "isBeforeYear":Z
    :goto_5
    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_9

    const/4 v9, 0x1

    .line 201
    .local v9, "isThisYear":Z
    :goto_6
    if-eqz v9, :cond_a

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 202
    .local v10, "isToday":Z
    :goto_7
    if-eqz v9, :cond_b

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    const/4 v11, 0x1

    .line 203
    .local v11, "isYesterday":Z
    :goto_8
    if-eqz v9, :cond_c

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v23

    if-lt v0, v1, :cond_c

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    const/4 v8, 0x1

    .line 204
    .local v8, "isThisWeek":Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 205
    .local v16, "resources":Landroid/content/res/Resources;
    const-string v5, ""

    .line 206
    .local v5, "currentTime":Ljava/lang/String;
    const-string v4, ""

    .line 207
    .local v4, "currentDay":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 477
    const/16 v24, 0x0

    :goto_a
    return-object v24

    .line 163
    .end local v4    # "currentDay":Ljava/lang/String;
    .end local v5    # "currentTime":Ljava/lang/String;
    .end local v7    # "isBeforeYear":Z
    .end local v8    # "isThisWeek":Z
    .end local v9    # "isThisYear":Z
    .end local v10    # "isToday":Z
    .end local v11    # "isYesterday":Z
    .end local v16    # "resources":Landroid/content/res/Resources;
    .end local v18    # "sameNowDay":Z
    .end local v19    # "sameType":Z
    .end local v20    # "sameWhenDay":Z
    .end local v21    # "sameWhenMonth":Z
    .end local v23    # "weekStart":I
    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 171
    .restart local v18    # "sameNowDay":Z
    .restart local v19    # "sameType":Z
    :cond_3
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    sget-wide v26, Lcom/meizu/common/util/DateTimeUtils;->NowMillisLast:J

    cmp-long v24, v24, v26

    if-ltz v24, :cond_4

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    sget-wide v26, Lcom/meizu/common/util/DateTimeUtils;->NowMillisLast:J

    const-wide/32 v28, 0x5265c00

    add-long v26, v26, v28

    cmp-long v24, v24, v26

    if-gez v24, :cond_4

    .line 172
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 174
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 184
    :cond_5
    sget-object v12, Lcom/meizu/common/util/DateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    goto/16 :goto_2

    .line 189
    .restart local v20    # "sameWhenDay":Z
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 194
    .restart local v21    # "sameWhenMonth":Z
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 199
    .restart local v23    # "weekStart":I
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 200
    .restart local v7    # "isBeforeYear":Z
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 201
    .restart local v9    # "isThisYear":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_7

    .line 202
    .restart local v10    # "isToday":Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_8

    .line 203
    .restart local v11    # "isYesterday":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_9

    .line 209
    .restart local v4    # "currentDay":Ljava/lang/String;
    .restart local v5    # "currentTime":Ljava/lang/String;
    .restart local v8    # "isThisWeek":Z
    .restart local v16    # "resources":Landroid/content/res/Resources;
    :pswitch_0
    if-eqz v10, :cond_e

    .line 210
    if-eqz v6, :cond_d

    .line 211
    const v24, 0x7f080082

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto :goto_a

    .line 213
    :cond_d
    const v24, 0x7f080083

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto :goto_a

    .line 215
    :cond_e
    if-eqz v8, :cond_10

    .line 217
    if-eqz v18, :cond_f

    if-eqz v20, :cond_f

    if-eqz v19, :cond_f

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_f

    .line 218
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_a

    .line 220
    :cond_f
    const v24, 0x7f080084

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 221
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 222
    :cond_10
    if-eqz v9, :cond_12

    .line 224
    if-eqz v18, :cond_11

    if-eqz v20, :cond_11

    if-eqz v19, :cond_11

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_11

    .line 225
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 227
    :cond_11
    const v24, 0x7f080087

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 228
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 229
    :cond_12
    if-eqz v7, :cond_14

    .line 230
    if-eqz v18, :cond_13

    if-eqz v20, :cond_13

    if-eqz v19, :cond_13

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_13

    .line 231
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 233
    :cond_13
    const v24, 0x7f08008d

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 234
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 238
    :cond_14
    if-eqz v18, :cond_15

    if-eqz v20, :cond_15

    if-eqz v19, :cond_15

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_15

    .line 239
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 241
    :cond_15
    const v24, 0x7f08008d

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 242
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 245
    :pswitch_1
    if-eqz v10, :cond_17

    .line 246
    if-eqz v6, :cond_16

    .line 247
    const v24, 0x7f080082

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 249
    :cond_16
    const v24, 0x7f080083

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 251
    :cond_17
    if-eqz v8, :cond_19

    .line 252
    if-eqz v6, :cond_18

    .line 253
    const v24, 0x7f080085

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 255
    :cond_18
    const v24, 0x7f080086

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 257
    :cond_19
    if-eqz v9, :cond_1b

    .line 258
    if-eqz v6, :cond_1a

    .line 259
    const v24, 0x7f080088

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 261
    :cond_1a
    const v24, 0x7f080089

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 263
    :cond_1b
    if-eqz v7, :cond_1d

    .line 264
    if-eqz v18, :cond_1c

    if-eqz v20, :cond_1c

    if-eqz v19, :cond_1c

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1c

    .line 265
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 267
    :cond_1c
    const v24, 0x7f08008d

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 268
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 270
    :cond_1d
    if-eqz v6, :cond_1e

    .line 271
    const v24, 0x7f08008e

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 273
    :cond_1e
    const v24, 0x7f08008f

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 277
    :pswitch_2
    if-eqz v9, :cond_20

    .line 278
    if-eqz v6, :cond_1f

    .line 279
    const v24, 0x7f08008a

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 281
    :cond_1f
    const v24, 0x7f08008b

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 283
    :cond_20
    if-eqz v7, :cond_22

    .line 284
    if-eqz v18, :cond_21

    if-eqz v20, :cond_21

    if-eqz v19, :cond_21

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_21

    .line 285
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 287
    :cond_21
    const v24, 0x7f08008d

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 288
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 290
    :cond_22
    const v24, 0x7f08008e

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 293
    :pswitch_3
    if-eqz v10, :cond_24

    .line 294
    if-eqz v6, :cond_23

    .line 295
    const v24, 0x7f080082

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 297
    :cond_23
    const v24, 0x7f080083

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 299
    :cond_24
    if-eqz v9, :cond_26

    .line 300
    if-eqz v6, :cond_25

    .line 301
    const v24, 0x7f080088

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 303
    :cond_25
    const v24, 0x7f080089

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 305
    :cond_26
    if-eqz v7, :cond_28

    .line 306
    if-eqz v18, :cond_27

    if-eqz v20, :cond_27

    if-eqz v19, :cond_27

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_27

    .line 307
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 309
    :cond_27
    const v24, 0x7f08008d

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 310
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 312
    :cond_28
    if-eqz v6, :cond_29

    .line 313
    const v24, 0x7f08008e

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 315
    :cond_29
    const v24, 0x7f08008f

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 319
    :pswitch_4
    if-eqz v10, :cond_2b

    .line 320
    if-eqz v6, :cond_2a

    .line 321
    const v24, 0x7f080082

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 323
    :cond_2a
    const v24, 0x7f080083

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 325
    :cond_2b
    if-eqz v9, :cond_2d

    .line 327
    if-eqz v18, :cond_2c

    if-eqz v20, :cond_2c

    if-eqz v19, :cond_2c

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2c

    .line 328
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 330
    :cond_2c
    const v24, 0x7f080087

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 331
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 332
    :cond_2d
    if-eqz v7, :cond_2f

    .line 333
    if-eqz v18, :cond_2e

    if-eqz v20, :cond_2e

    if-eqz v19, :cond_2e

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2e

    .line 334
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 336
    :cond_2e
    const v24, 0x7f08008d

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 337
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 340
    :cond_2f
    if-eqz v18, :cond_30

    if-eqz v20, :cond_30

    if-eqz v19, :cond_30

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_30

    .line 341
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 343
    :cond_30
    const v24, 0x7f08008d

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 344
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 347
    :pswitch_5
    if-eqz v10, :cond_32

    .line 348
    if-eqz v6, :cond_31

    .line 349
    const v24, 0x7f080082

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 351
    :cond_31
    const v24, 0x7f080083

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 353
    :cond_32
    if-eqz v8, :cond_34

    .line 354
    if-eqz v6, :cond_33

    .line 355
    const v24, 0x7f080085

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 357
    :cond_33
    const v24, 0x7f080086

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 359
    :cond_34
    if-eqz v9, :cond_36

    .line 360
    if-eqz v6, :cond_35

    .line 361
    const v24, 0x7f080088

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 363
    :cond_35
    const v24, 0x7f080089

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 366
    :cond_36
    if-eqz v6, :cond_37

    .line 367
    const v24, 0x7f08008e

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 371
    :goto_b
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 369
    :cond_37
    const v24, 0x7f08008f

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_b

    .line 374
    :pswitch_6
    if-eqz v10, :cond_3b

    .line 375
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    sub-long v14, v24, p1

    .line 377
    .local v14, "offsetMilliSecounds":J
    const-wide/32 v24, 0x36ee80

    cmp-long v24, v14, v24

    if-ltz v24, :cond_39

    .line 378
    long-to-int v0, v14

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x3c

    div-int/lit8 v24, v24, 0x3c

    move/from16 v0, v24

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    .line 379
    .local v17, "returnValue":I
    const/16 v24, 0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_38

    .line 380
    const v24, 0x7f080092

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 382
    :cond_38
    const v24, 0x7f080091

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    const-string v25, ","

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 385
    .end local v17    # "returnValue":I
    :cond_39
    long-to-int v0, v14

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x3c

    move/from16 v0, v24

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    .line 386
    .restart local v17    # "returnValue":I
    const/16 v24, 0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-gt v0, v1, :cond_3a

    .line 387
    const v24, 0x7f080094

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 389
    :cond_3a
    const v24, 0x7f080093

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    const-string v25, ","

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 392
    .end local v14    # "offsetMilliSecounds":J
    .end local v17    # "returnValue":I
    :cond_3b
    if-eqz v11, :cond_3c

    .line 393
    const v24, 0x7f080090

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 394
    :cond_3c
    if-eqz v9, :cond_3e

    .line 396
    if-eqz v18, :cond_3d

    if-eqz v20, :cond_3d

    if-eqz v19, :cond_3d

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3d

    .line 397
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 399
    :cond_3d
    const v24, 0x7f080087

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 400
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 401
    :cond_3e
    if-eqz v7, :cond_40

    .line 402
    if-eqz v18, :cond_3f

    if-eqz v20, :cond_3f

    if-eqz v19, :cond_3f

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3f

    .line 403
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 405
    :cond_3f
    const v24, 0x7f08008d

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 406
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 409
    :cond_40
    if-eqz v18, :cond_41

    if-eqz v20, :cond_41

    if-eqz v19, :cond_41

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_41

    .line 410
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 412
    :cond_41
    const v24, 0x7f08008d

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 413
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 417
    :pswitch_7
    if-eqz v18, :cond_42

    if-eqz v20, :cond_42

    if-eqz v19, :cond_42

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_42

    .line 418
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 420
    :cond_42
    if-eqz v9, :cond_43

    .line 421
    const v24, 0x7f080087

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 422
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 424
    :cond_43
    const v24, 0x7f08008d

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 425
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 428
    :pswitch_8
    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_45

    .line 430
    if-eqz v18, :cond_44

    if-eqz v20, :cond_44

    if-eqz v19, :cond_44

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_44

    .line 431
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 433
    :cond_44
    const v24, 0x7f080087

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 434
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 437
    :cond_45
    if-eqz v18, :cond_46

    if-eqz v21, :cond_46

    if-eqz v19, :cond_46

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_46

    .line 438
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 440
    :cond_46
    const v24, 0x7f08008c

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 441
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 445
    :pswitch_9
    if-eqz v18, :cond_47

    if-eqz v20, :cond_47

    if-eqz v19, :cond_47

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_47

    .line 446
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 448
    :cond_47
    const v24, 0x7f08008d

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 449
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 452
    :pswitch_a
    if-eqz v18, :cond_48

    if-eqz v20, :cond_48

    if-eqz v19, :cond_48

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_48

    .line 453
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 455
    :cond_48
    const v24, 0x7f080087

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 456
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 458
    :pswitch_b
    if-eqz v10, :cond_4a

    .line 459
    if-eqz v6, :cond_49

    .line 460
    const v24, 0x7f080082

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 462
    :cond_49
    const v24, 0x7f080083

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 464
    :cond_4a
    if-eqz v8, :cond_4b

    .line 465
    const v24, 0x7f080084

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 466
    :cond_4b
    if-eqz v9, :cond_4c

    .line 467
    const v24, 0x7f080087

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_a

    .line 469
    :cond_4c
    if-eqz v18, :cond_4d

    if-eqz v20, :cond_4d

    if-eqz v19, :cond_4d

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4d

    .line 470
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 473
    :cond_4d
    const v24, 0x7f080087

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 474
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static formatTimeStampString(Landroid/content/Context;JIZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J
    .param p3, "type"    # I
    .param p4, "hasTime"    # Z

    .prologue
    .line 134
    invoke-static {p0, p1, p2, p3}, Lcom/meizu/common/util/DateTimeUtils;->formatTimeStampString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J
    .param p3, "fullFormat"    # Z

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/meizu/common/util/DateTimeUtils;->formatTimeStampString(Landroid/content/Context;JIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
