.class public Lcom/meizu/common/preference/EditTextPreference;
.super Landroid/preference/Preference;
.source "EditTextPreference.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/preference/EditTextPreference$SavedState;
    }
.end annotation


# static fields
.field private static focusClass:Lcom/meizu/common/preference/EditTextPreference;


# instance fields
.field private isFocus:Z

.field private mEditText:Landroid/widget/EditText;

.field private mParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/common/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/preference/EditTextPreference;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    iput-boolean v2, p0, Lcom/meizu/common/preference/EditTextPreference;->isFocus:Z

    .line 61
    const v0, 0x7f040062

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditTextPreference;->setLayoutResource(I)V

    .line 63
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 64
    iget-object v0, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/preference/EditTextPreference;->initEditText(Landroid/widget/EditText;Landroid/content/Context;)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/meizu/common/preference/EditTextPreference;->setPersistent(Z)V

    .line 68
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/meizu/common/preference/EditTextPreference;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    return-void
.end method

.method private initEditText(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 5
    .param p1, "edit"    # Landroid/widget/EditText;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 75
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1020003

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setId(I)V

    .line 78
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 80
    const v2, 0x7f0a005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 81
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 83
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 84
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 85
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setClickable(Z)V

    .line 86
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 87
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 88
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 89
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 91
    const/high16 v2, 0x2000000

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 94
    const-string v2, "com.meizu.input.candidateAlwaysVisible"

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    .line 97
    .local v0, "inputType":I
    invoke-static {v0}, Lcom/meizu/common/preference/EditTextPreference;->isPasswordInputType(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 99
    :cond_0
    return-void
.end method

.method private static isPasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    .line 102
    and-int/lit16 v0, p0, 0xfff

    .line 104
    .local v0, "variation":I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    iget-object v1, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/common/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/preference/EditTextPreference;->mText:Ljava/lang/String;

    return-object v1
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 134
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "layout":Landroid/view/View;
    iget-object v3, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 117
    .local v2, "oldParent":Landroid/view/ViewParent;
    if-eq v2, v1, :cond_1

    .line 118
    if-eqz v2, :cond_0

    .line 119
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "oldParent":Landroid/view/ViewParent;
    iget-object v3, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 122
    :cond_0
    const v3, 0x7f0d0105

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 123
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 124
    iget-object v3, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/meizu/common/preference/EditTextPreference;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_1
    return-object v1
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 4
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 229
    iget-object v3, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 230
    if-eqz p2, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 233
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 237
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 229
    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x1

    .line 137
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/common/preference/EditTextPreference;->isFocus:Z

    .line 138
    if-ne p2, v2, :cond_1

    .line 139
    sput-object p0, Lcom/meizu/common/preference/EditTextPreference;->focusClass:Lcom/meizu/common/preference/EditTextPreference;

    .line 140
    iput-boolean v2, p0, Lcom/meizu/common/preference/EditTextPreference;->isFocus:Z

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 213
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 268
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/meizu/common/preference/EditTextPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 277
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 274
    check-cast v0, Lcom/meizu/common/preference/EditTextPreference$SavedState;

    .line 275
    .local v0, "myState":Lcom/meizu/common/preference/EditTextPreference$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/preference/EditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 276
    iget-object v1, v0, Lcom/meizu/common/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 255
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 256
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditTextPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 261
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/meizu/common/preference/EditTextPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/meizu/common/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 262
    .local v0, "myState":Lcom/meizu/common/preference/EditTextPreference$SavedState;
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/meizu/common/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    move-object v1, v0

    .line 263
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 218
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/meizu/common/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 219
    return-void

    .line 218
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/meizu/common/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/preference/EditTextPreference;->isFocus:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 316
    sput-object p0, Lcom/meizu/common/preference/EditTextPreference;->focusClass:Lcom/meizu/common/preference/EditTextPreference;

    .line 317
    iget-object v0, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 322
    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 327
    sget-object v0, Lcom/meizu/common/preference/EditTextPreference;->focusClass:Lcom/meizu/common/preference/EditTextPreference;

    if-ne v0, p0, :cond_0

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/preference/EditTextPreference;->isFocus:Z

    .line 329
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/preference/EditTextPreference;->focusClass:Lcom/meizu/common/preference/EditTextPreference;

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/preference/EditTextPreference;->isFocus:Z

    goto :goto_0
.end method

.method public setAutoShowSoftInput(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 340
    if-eqz p1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 342
    iget-object v1, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 344
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 345
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 348
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .param p1, "dialogTitleResId"    # I

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 157
    check-cast p1, Ljava/lang/String;

    .end local p1    # "dialogTitle":Ljava/lang/CharSequence;
    invoke-super {p0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 167
    check-cast p1, Ljava/lang/String;

    .end local p1    # "summary":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v1

    .line 178
    .local v1, "wasBlocking":Z
    iput-object p1, p0, Lcom/meizu/common/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 180
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    .line 183
    iget-object v2, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 184
    iget-object v2, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v2, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/meizu/common/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 193
    .local v0, "isBlocking":Z
    if-eq v0, v1, :cond_1

    .line 194
    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditTextPreference;->notifyDependencyChange(Z)V

    .line 196
    :cond_1
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/meizu/common/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

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
