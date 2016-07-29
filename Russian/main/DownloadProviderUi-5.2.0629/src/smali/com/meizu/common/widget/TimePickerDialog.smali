.class public Lcom/meizu/common/widget/TimePickerDialog;
.super Landroid/app/AlertDialog;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mCallback:Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mTimePicker:Lcom/meizu/common/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    const/4 v6, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 108
    iput-object p3, p0, Lcom/meizu/common/widget/TimePickerDialog;->mCallback:Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;

    .line 109
    iput p4, p0, Lcom/meizu/common/widget/TimePickerDialog;->mInitialHourOfDay:I

    .line 110
    iput p5, p0, Lcom/meizu/common/widget/TimePickerDialog;->mInitialMinute:I

    .line 111
    iput-boolean p6, p0, Lcom/meizu/common/widget/TimePickerDialog;->mIs24HourView:Z

    .line 113
    const/4 v5, -0x1

    const v7, 0x7f080099

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0, v5, v7, p0}, Lcom/meizu/common/widget/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 115
    const/4 v7, -0x2

    const/high16 v5, 0x1040000

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v5, v6

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v8, v5}, Lcom/meizu/common/widget/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 118
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 120
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040050

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 121
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/TimePickerDialog;->setView(Landroid/view/View;)V

    .line 122
    const v5, 0x7f0d00ee

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/widget/TimePicker;

    iput-object v5, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    .line 125
    iget-object v5, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    iget-boolean v6, p0, Lcom/meizu/common/widget/TimePickerDialog;->mIs24HourView:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/common/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 126
    iget-object v5, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    iget v6, p0, Lcom/meizu/common/widget/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/common/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 127
    iget-object v5, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    iget v6, p0, Lcom/meizu/common/widget/TimePickerDialog;->mInitialMinute:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/common/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 128
    iget-object v5, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v5, p0}, Lcom/meizu/common/widget/TimePicker;->setOnTimeChangedListener(Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;)V

    .line 130
    sget-object v5, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {p1, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    .local v0, "b":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0094

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 133
    .local v2, "selectColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0092

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 136
    .local v3, "unSelectColor":I
    invoke-virtual {p0, v2, v3, v2}, Lcom/meizu/common/widget/TimePickerDialog;->setTextColor(III)V

    .line 137
    iget-object v5, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/meizu/common/widget/TimePicker;->setIsDrawLine(Z)V

    .line 138
    iget-object v5, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b01e8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b01e9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/meizu/common/widget/TimePicker;->setLineHeight(II)V

    .line 140
    new-instance v5, Lcom/meizu/common/widget/TimePickerDialog$1;

    invoke-direct {v5, p0, v2}, Lcom/meizu/common/widget/TimePickerDialog$1;-><init>(Lcom/meizu/common/widget/TimePickerDialog;I)V

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/TimePickerDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 92
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/TimePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 93
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mCallback:Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/TimePicker;->clearFocus()V

    .line 152
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mCallback:Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/meizu/common/widget/TimePicker;II)V

    .line 155
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 178
    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 179
    .local v0, "hour":I
    const-string v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 180
    .local v1, "minute":I
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 181
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 182
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 183
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 169
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v1, "minute"

    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const-string v1, "is24hour"

    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    return-object v0
.end method

.method public onTimeChanged(Lcom/meizu/common/widget/TimePicker;II)V
    .locals 0
    .param p1, "view"    # Lcom/meizu/common/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 164
    return-void
.end method

.method public setTextColor(III)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I
    .param p3, "unitColor"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/common/widget/TimePicker;->setTextColor(III)V

    .line 194
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minutOfHour"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 159
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 160
    return-void
.end method
