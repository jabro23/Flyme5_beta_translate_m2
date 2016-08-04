.class public Lcom/meizu/common/widget/CustomPickerDialog;
.super Landroid/app/AlertDialog;
.source "CustomPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CustomPickerDialog$OnValueSetListener;
    }
.end annotation


# static fields
.field private static final KEY_CURRENT_ITEMS:Ljava/lang/String; = "key_current_items"


# instance fields
.field private final mCallback:Lcom/meizu/common/widget/CustomPickerDialog$OnValueSetListener;

.field private final mPicker:Lcom/meizu/common/widget/CustomPicker;

.field private mPositiveBtnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/CustomPickerDialog$OnValueSetListener;I[Lcom/meizu/common/widget/CustomPicker$ColumnData;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/meizu/common/widget/CustomPickerDialog$OnValueSetListener;
    .param p4, "columnCount"    # I
    .param p5, "columnData"    # [Lcom/meizu/common/widget/CustomPicker$ColumnData;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 67
    iput-object p3, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mCallback:Lcom/meizu/common/widget/CustomPickerDialog$OnValueSetListener;

    .line 72
    const/4 v0, -0x1

    const v1, 0x7f080099

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-super {p0, v0, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 74
    const/4 v1, -0x2

    const v0, 0x7f08009a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-super {p0, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    new-instance v0, Lcom/meizu/common/widget/CustomPicker;

    invoke-direct {v0, p1, p4, p5}, Lcom/meizu/common/widget/CustomPicker;-><init>(Landroid/content/Context;I[Lcom/meizu/common/widget/CustomPicker$ColumnData;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPicker:Lcom/meizu/common/widget/CustomPicker;

    .line 78
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPicker:Lcom/meizu/common/widget/CustomPicker;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomPickerDialog;->setView(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/meizu/common/widget/CustomPickerDialog$OnValueSetListener;I[Lcom/meizu/common/widget/CustomPicker$ColumnData;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/meizu/common/widget/CustomPickerDialog$OnValueSetListener;
    .param p3, "columnCount"    # I
    .param p4, "columnData"    # [Lcom/meizu/common/widget/CustomPicker$ColumnData;

    .prologue
    .line 48
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/CustomPickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/CustomPickerDialog$OnValueSetListener;I[Lcom/meizu/common/widget/CustomPicker$ColumnData;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mCallback:Lcom/meizu/common/widget/CustomPickerDialog$OnValueSetListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPicker:Lcom/meizu/common/widget/CustomPicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomPicker;->clearFocus()V

    .line 84
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mCallback:Lcom/meizu/common/widget/CustomPickerDialog$OnValueSetListener;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPicker:Lcom/meizu/common/widget/CustomPicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPicker:Lcom/meizu/common/widget/CustomPicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CustomPicker;->getCurrentItems()[I

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/common/widget/CustomPickerDialog$OnValueSetListener;->onValueSet(Lcom/meizu/common/widget/CustomPicker;[I)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPositiveBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPositiveBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 90
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 142
    const-string v1, "key_current_items"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 143
    .local v0, "currentItems":[I
    iget-object v1, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPicker:Lcom/meizu/common/widget/CustomPicker;

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/CustomPicker;->updateCurrentItems([I)V

    .line 144
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 135
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "key_current_items"

    iget-object v2, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPicker:Lcom/meizu/common/widget/CustomPicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CustomPicker;->getCurrentItems()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 136
    return-object v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 95
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 96
    iput-object p3, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPositiveBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    move-object p3, p0

    .line 99
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 100
    return-void
.end method

.method public varargs setCurrentItem([I)V
    .locals 3
    .param p1, "currentItems"    # [I

    .prologue
    .line 110
    iget-object v1, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPicker:Lcom/meizu/common/widget/CustomPicker;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 117
    :cond_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPicker:Lcom/meizu/common/widget/CustomPicker;

    aget v2, p1, v0

    invoke-virtual {v1, v0, v2}, Lcom/meizu/common/widget/CustomPicker;->setCurrentItem(II)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnCurrentItemChangedListener(Lcom/meizu/common/widget/CustomPicker$OnCurrentItemChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/meizu/common/widget/CustomPicker$OnCurrentItemChangedListener;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPicker:Lcom/meizu/common/widget/CustomPicker;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPicker:Lcom/meizu/common/widget/CustomPicker;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomPicker;->setOnCurrentItemChangedListener(Lcom/meizu/common/widget/CustomPicker$OnCurrentItemChangedListener;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setTextColor(III)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I
    .param p3, "unitColor"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPicker:Lcom/meizu/common/widget/CustomPicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/common/widget/CustomPicker;->setTextColor(III)V

    .line 155
    return-void
.end method

.method public varargs updateCurrentItems([I)V
    .locals 1
    .param p1, "currentItems"    # [I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPickerDialog;->mPicker:Lcom/meizu/common/widget/CustomPicker;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomPicker;->updateCurrentItems([I)V

    .line 104
    return-void
.end method
