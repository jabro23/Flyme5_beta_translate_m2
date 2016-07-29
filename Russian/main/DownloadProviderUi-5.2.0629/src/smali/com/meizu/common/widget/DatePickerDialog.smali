.class public Lcom/meizu/common/widget/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/meizu/common/widget/DatePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v7, 0x0

    .line 145
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/meizu/common/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;IIIZZ)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;IIIZZ)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "isLunar"    # Z
    .param p8, "isLeapMonth"    # Z

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 166
    iput-object p3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

    .line 168
    const/4 v0, -0x1

    const v1, 0x7f080099

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/meizu/common/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 169
    const/4 v1, -0x2

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v0}, Lcom/meizu/common/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 171
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 173
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04002e

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 174
    .local v11, "view":Landroid/view/View;
    invoke-virtual {p0, v11}, Lcom/meizu/common/widget/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 175
    const v0, 0x7f0d00a1

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/DatePicker;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    .line 176
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move-object v4, p0

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;ZZ)V

    .line 178
    sget-object v0, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 179
    .local v7, "b":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 181
    .local v9, "selectColor":I
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 184
    .local v10, "unSelectColor":I
    invoke-virtual {p0, v9, v10, v9}, Lcom/meizu/common/widget/DatePickerDialog;->setTextColor(III)V

    .line 185
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->setIsDrawLine(Z)V

    .line 186
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/DatePicker;->setLineHeight(II)V

    .line 188
    new-instance v0, Lcom/meizu/common/widget/DatePickerDialog$1;

    invoke-direct {v0, p0, v9}, Lcom/meizu/common/widget/DatePickerDialog$1;-><init>(Lcom/meizu/common/widget/DatePickerDialog;I)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePickerDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 128
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;III)V

    .line 129
    return-void
.end method


# virtual methods
.method public getDatePicker()Lcom/meizu/common/widget/DatePicker;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker;->clearFocus()V

    .line 200
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/meizu/common/widget/DatePicker;III)V

    .line 203
    :cond_0
    return-void
.end method

.method public onDateChanged(Lcom/meizu/common/widget/DatePicker;III)V
    .locals 6
    .param p1, "view"    # Lcom/meizu/common/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V

    .line 207
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 252
    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 253
    .local v1, "year":I
    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 254
    .local v2, "month":I
    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 255
    .local v3, "day":I
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V

    .line 256
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 243
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    const-string v1, "month"

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    const-string v1, "day"

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    return-object v0
.end method

.method public setMaxYear(I)V
    .locals 4
    .param p1, "year"    # I

    .prologue
    const/4 v2, 0x1

    .line 285
    const/16 v1, 0x833

    if-le p1, v1, :cond_0

    .line 286
    const/16 p1, 0x833

    .line 288
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 289
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, v2, v2}, Ljava/util/Calendar;->set(III)V

    .line 290
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/DatePicker;->setMaxDate(J)V

    .line 291
    return-void
.end method

.method public setMinYear(I)V
    .locals 4
    .param p1, "year"    # I

    .prologue
    const/4 v2, 0x1

    .line 273
    const/16 v1, 0x76c

    if-ge p1, v1, :cond_0

    .line 274
    const/16 p1, 0x76c

    .line 276
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 277
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, v2, v2}, Ljava/util/Calendar;->set(III)V

    .line 278
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/DatePicker;->setMinDate(J)V

    .line 279
    return-void
.end method

.method public setTextColor(III)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I
    .param p3, "unitColor"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/common/widget/DatePicker;->setTextColor(III)V

    .line 267
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/DatePickerDialog;->updateDate(IIIZ)V

    .line 227
    return-void
.end method

.method public updateDate(IIIZ)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "doAnimate"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    .line 238
    return-void
.end method
