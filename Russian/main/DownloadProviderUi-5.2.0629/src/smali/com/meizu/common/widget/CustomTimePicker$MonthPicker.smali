.class Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;
.super Ljava/lang/Object;
.source "CustomTimePicker.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CustomTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthPicker"
.end annotation


# instance fields
.field private endDate:[I

.field private endIndex:I

.field private endLunarDate:[I

.field private leapMonthIn1stYear:I

.field private leapMonthIn2ndYear:I

.field private lunarMonthsIn1stYear:I

.field private lunarMonthsIn2ndYear:I

.field private mMonths:[Ljava/lang/String;

.field private picker:Lcom/meizu/common/widget/ScrollTextView;

.field private startDate:[I

.field private startIndex:I

.field private startLunarDate:[I

.field final synthetic this$0:Lcom/meizu/common/widget/CustomTimePicker;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/CustomTimePicker;Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 2
    .param p2, "picker"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    const/4 v1, 0x4

    .line 760
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    .line 747
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    .line 748
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    .line 749
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    .line 761
    iput-object p2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    .line 762
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->mMonths:[Ljava/lang/String;

    .line 763
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->calculateValidDateField()V

    .line 764
    return-void
.end method

.method private calculateValidDateField()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 942
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 943
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aput v2, v1, v6

    .line 944
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v5

    .line 945
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aput v2, v1, v7

    .line 946
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aput v6, v1, v8

    .line 948
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v5

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v6

    :goto_0
    aput v1, v2, v6

    .line 949
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v5

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    const/16 v1, 0xc

    :goto_1
    aput v1, v2, v5

    .line 950
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v4, v4, v5

    # invokes: Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I
    invoke-static {v2, v3, v4, v6}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v2

    aput v2, v1, v7

    .line 951
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aput v6, v1, v8

    .line 953
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v3, v3, v7

    invoke-static {v1, v2, v3}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    .line 956
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v3, v3, v7

    invoke-static {v1, v2, v3}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    .line 959
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v2, v2, v6

    if-ne v1, v2, :cond_2

    .line 960
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v5

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    .line 961
    iput v6, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    .line 962
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    add-int/2addr v2, v3

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I
    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$1802(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 987
    :goto_2
    return-void

    .line 948
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 949
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 966
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v5

    rsub-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    .line 967
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v6

    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 968
    .local v0, "leapMonth":I
    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    .line 969
    if-eqz v0, :cond_4

    .line 970
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v5

    if-lt v1, v0, :cond_3

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v5

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v8

    if-eq v1, v5, :cond_4

    .line 972
    :cond_3
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    .line 976
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v5

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    .line 977
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v6

    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 978
    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    .line 979
    if-eqz v0, :cond_6

    .line 980
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v5

    if-gt v1, v0, :cond_5

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v5

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v8

    if-ne v1, v5, :cond_6

    .line 982
    :cond_5
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    .line 986
    :cond_6
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    add-int/2addr v2, v3

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I
    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$1802(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_2
.end method

.method private getLunarMonths(II)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I
    .param p2, "year"    # I

    .prologue
    const/4 v3, 0x0

    .line 1117
    rem-int/lit8 p1, p1, 0xd

    .line 1118
    invoke-static {p2}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v1

    .line 1119
    .local v1, "leapMonth":I
    if-nez v1, :cond_1

    .line 1120
    const/16 v4, 0xc

    if-lt p1, v4, :cond_2

    .line 1139
    :cond_0
    :goto_0
    return-object v3

    .line 1124
    :cond_1
    const/16 v4, 0xd

    if-ge p1, v4, :cond_0

    .line 1129
    :cond_2
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1130
    .local v2, "mouths":[Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "leap":Ljava/lang/String;
    if-eqz v1, :cond_4

    add-int/lit8 v3, v1, -0x1

    if-le p1, v3, :cond_4

    .line 1133
    if-ne p1, v1, :cond_3

    .line 1134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1136
    :cond_3
    add-int/lit8 v3, p1, -0x1

    aget-object v3, v2, v3

    goto :goto_0

    .line 1139
    :cond_4
    aget-object v3, v2, p1

    goto :goto_0
.end method

.method private getShortMonths()[Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xc

    .line 1085
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1086
    .local v0, "currentLocale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonthLocale:Ljava/util/Locale;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1087
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    .line 1112
    :goto_0
    return-object v2

    .line 1089
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonthUpdateLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2700(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1090
    :try_start_0
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonthLocale:Ljava/util/Locale;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1091
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2602(Lcom/meizu/common/widget/CustomTimePicker;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1092
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 1093
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v1, 0x0

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1092
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1103
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1104
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1105
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1104
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1108
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonthLocale:Ljava/util/Locale;
    invoke-static {v2, v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2502(Lcom/meizu/common/widget/CustomTimePicker;Ljava/util/Locale;)Ljava/util/Locale;

    .line 1110
    .end local v1    # "i":I
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1110
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public getCurrentItem()I
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getItemText(I)Ljava/lang/String;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 991
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 992
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    .line 994
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$1800(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    .line 996
    :cond_0
    const-string v2, ""

    .line 1022
    :goto_0
    return-object v2

    .line 1000
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-lt p1, v2, :cond_2

    .line 1001
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    sub-int/2addr p1, v2

    .line 1002
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v2, v5

    .line 1014
    .local v1, "year":I
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->getLunarMonths(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1004
    .end local v1    # "year":I
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int/2addr p1, v2

    .line 1005
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-eqz v2, :cond_4

    .line 1006
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v4

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-gt v2, v3, :cond_3

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v4

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-lt p1, v2, :cond_4

    .line 1007
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 1011
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v2, v5

    .restart local v1    # "year":I
    goto :goto_1

    .line 1016
    .end local v1    # "year":I
    :cond_5
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-lt p1, v2, :cond_6

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xb

    if-le p1, v2, :cond_7

    .line 1018
    :cond_6
    const-string v2, ""

    goto :goto_0

    .line 1021
    :cond_7
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0xc

    .line 1022
    .local v0, "m":I
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->mMonths:[Ljava/lang/String;

    aget-object v2, v2, v0

    goto :goto_0
.end method

.method public getMonth([I)I
    .locals 5
    .param p1, "data"    # [I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 777
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->getCurrentItem()I

    move-result v0

    .line 779
    .local v0, "id":I
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 780
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-lt v0, v1, :cond_3

    .line 781
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    .line 782
    if-eqz p1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v4

    aput v1, p1, v4

    .line 785
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 786
    aput v3, p1, v3

    .line 791
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-le v0, v1, :cond_1

    .line 792
    add-int/lit8 v0, v0, -0x1

    .line 830
    :cond_1
    :goto_1
    return v0

    .line 788
    :cond_2
    aput v4, p1, v3

    goto :goto_0

    .line 795
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    .line 796
    if-eqz p1, :cond_4

    .line 797
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v4

    aput v1, p1, v4

    .line 800
    :cond_4
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-eqz v1, :cond_7

    .line 801
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-ne v0, v1, :cond_5

    .line 802
    aput v3, p1, v3

    goto :goto_1

    .line 803
    :cond_5
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    rsub-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_6

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-le v0, v1, :cond_6

    .line 804
    aput v3, p1, v3

    .line 805
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 807
    :cond_6
    aput v4, p1, v3

    goto :goto_1

    .line 810
    :cond_7
    aput v4, p1, v3

    goto :goto_1

    .line 815
    :cond_8
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v3

    rsub-int/lit8 v1, v1, 0xc

    if-le v0, v1, :cond_9

    .line 816
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v3

    rsub-int/lit8 v1, v1, 0xc

    sub-int/2addr v0, v1

    .line 817
    if-eqz p1, :cond_1

    .line 818
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v1, v1, v4

    aput v1, p1, v4

    .line 819
    aput v4, p1, v3

    goto :goto_1

    .line 822
    :cond_9
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    .line 823
    if-eqz p1, :cond_1

    .line 824
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v4

    aput v1, p1, v4

    .line 825
    aput v4, p1, v3

    goto :goto_1
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromOld"    # I
    .param p3, "toNew"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1028
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v5

    # invokes: Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I
    invoke-static {v2, v3, v4, v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v1

    .line 1030
    .local v1, "maxdays":I
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, p3, v2

    .line 1032
    .local v0, "id":I
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1033
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-lt v0, v2, :cond_2

    .line 1034
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v3, v3, v7

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1902(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 1046
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1047
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-lt v0, v2, :cond_5

    .line 1048
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v0, v2

    .line 1050
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-le v0, v2, :cond_0

    .line 1051
    add-int/lit8 v0, v0, -0x1

    .line 1070
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v2, v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2002(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 1074
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v5

    # invokes: Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I
    invoke-static {v2, v3, v4, v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1076
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v5

    # invokes: Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I
    invoke-static {v2, v3, v4, v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v1

    .line 1078
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->refreshCount(I)V

    .line 1081
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setDayPickerValidField(I)V

    .line 1082
    return-void

    .line 1036
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v3, v3, v7

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1902(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_0

    .line 1039
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v6

    rsub-int/lit8 v2, v2, 0xc

    if-le v0, v2, :cond_4

    .line 1040
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v3, v3, v7

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1902(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto/16 :goto_0

    .line 1042
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v3, v3, v7

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1902(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto/16 :goto_0

    .line 1054
    :cond_5
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v6

    add-int/2addr v0, v2

    .line 1056
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v6

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    if-eq v2, v6, :cond_0

    .line 1057
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-le v0, v2, :cond_0

    .line 1058
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 1064
    :cond_6
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v6

    rsub-int/lit8 v2, v2, 0xc

    if-le v0, v2, :cond_7

    .line 1065
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v6

    rsub-int/lit8 v2, v2, 0xc

    sub-int/2addr v0, v2

    goto/16 :goto_1

    .line 1067
    :cond_7
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v6

    add-int/2addr v0, v2

    goto/16 :goto_1
.end method

.method public refreshCountAndCurrent(II)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "current"    # I

    .prologue
    .line 918
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCountAndCurrent(II)V

    .line 920
    return-void
.end method

.method public setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V
    .locals 9
    .param p1, "dataAdapter"    # Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    .param p2, "lineOffset"    # F
    .param p3, "currentItem"    # I
    .param p4, "count"    # I
    .param p5, "oneScreenCount"    # I
    .param p6, "validStart"    # I
    .param p7, "validEnd"    # I
    .param p8, "cycleEnabled"    # Z

    .prologue
    .line 933
    iput p6, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startIndex:I

    .line 934
    div-int/lit8 v0, p5, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int v0, v0, p7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endIndex:I

    .line 936
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    div-int/lit8 v1, p5, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int v4, p4, v1

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startIndex:I

    iget v7, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endIndex:I

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, p5

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 939
    return-void
.end method

.method public setDayPickerValidField(I)V
    .locals 8
    .param p1, "day"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 877
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v4

    # invokes: Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I
    invoke-static {v1, v2, v3, v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v0

    .line 878
    .local v0, "maxdays":I
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 879
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v6

    if-ne v1, v2, :cond_0

    .line 880
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    .line 885
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v2, v2, v5

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v2, v2, v6

    if-ne v1, v2, :cond_1

    .line 886
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    .line 905
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v1, p1}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 906
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 907
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getValidEnd()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 908
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getValidStart()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 910
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v6}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setCurrentItem(IZ)V

    .line 911
    return-void

    .line 882
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    goto/16 :goto_0

    .line 888
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    goto :goto_1

    .line 891
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v5

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v6

    if-ne v1, v2, :cond_3

    .line 892
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    .line 897
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v5

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v6

    if-ne v1, v2, :cond_4

    .line 898
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    goto/16 :goto_1

    .line 894
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    goto :goto_2

    .line 900
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    goto/16 :goto_1
.end method

.method public setMonth(IIIZ)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "isleapmonth"    # Z

    .prologue
    const/16 v3, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 834
    if-gez p2, :cond_0

    .line 874
    :goto_0
    return-void

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->isLeapMonth:Z
    invoke-static {v0, p4}, Lcom/meizu/common/widget/CustomTimePicker;->access$1702(Lcom/meizu/common/widget/CustomTimePicker;Z)Z

    .line 838
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 839
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_4

    .line 840
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-eqz v0, :cond_2

    .line 841
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v0, v0, v1

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-eq v0, v2, :cond_2

    .line 842
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-gt p2, v0, :cond_1

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-ne v0, p2, :cond_2

    if-eqz p4, :cond_2

    .line 844
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 848
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$1800(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v2

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    .line 873
    :cond_3
    :goto_1
    invoke-virtual {p0, p3}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setDayPickerValidField(I)V

    goto :goto_0

    .line 851
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_3

    .line 852
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-eqz v0, :cond_6

    .line 853
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-gt p2, v0, :cond_5

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-ne v0, p2, :cond_6

    if-eqz p4, :cond_6

    .line 855
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 858
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$1800(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    goto :goto_1

    .line 862
    :cond_7
    if-gt p2, v3, :cond_3

    .line 863
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v0, v0, v2

    if-lt p2, v0, :cond_8

    .line 864
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v2

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 865
    invoke-virtual {p0, v3, p2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    goto :goto_1

    .line 866
    :cond_8
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v0, v0, v2

    if-gt p2, v0, :cond_3

    .line 867
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v0, v0, v2

    sub-int/2addr v0, p2

    rsub-int/lit8 p2, v0, 0xb

    .line 868
    invoke-virtual {p0, v3, p2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    goto :goto_1
.end method

.method public setSelectItemHeight(I)V
    .locals 2
    .param p1, "selectHeight"    # I

    .prologue
    .line 767
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 768
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I

    .prologue
    .line 927
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 928
    return-void
.end method

.method public setTextSize(II)V
    .locals 3
    .param p1, "selectedSize"    # I
    .param p2, "normalSize"    # I

    .prologue
    .line 923
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 924
    return-void
.end method
