.class public Lcom/meizu/common/preference/SwitchPreference;
.super Landroid/preference/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/preference/SwitchPreference$1;,
        Lcom/meizu/common/preference/SwitchPreference$Listener;
    }
.end annotation


# static fields
.field private static sOnPreferenceChanged:Ljava/lang/reflect/Method;

.field private static sRecycle:Ljava/lang/reflect/Field;


# instance fields
.field private final mListener:Lcom/meizu/common/preference/SwitchPreference$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;

.field mUseAnim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 131
    const v0, 0x7f010116

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v6, 0x13

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v4, Lcom/meizu/common/preference/SwitchPreference$Listener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/meizu/common/preference/SwitchPreference$Listener;-><init>(Lcom/meizu/common/preference/SwitchPreference;Lcom/meizu/common/preference/SwitchPreference$1;)V

    iput-object v4, p0, Lcom/meizu/common/preference/SwitchPreference;->mListener:Lcom/meizu/common/preference/SwitchPreference$Listener;

    .line 47
    iput-boolean v2, p0, Lcom/meizu/common/preference/SwitchPreference;->mUseAnim:Z

    .line 107
    :try_start_0
    sget-object v4, Lcom/meizu/common/preference/SwitchPreference;->sRecycle:Ljava/lang/reflect/Field;

    if-nez v4, :cond_0

    .line 108
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_1

    .line 109
    const-class v4, Landroid/preference/Preference;

    const-string v5, "mCanRecycleLayout"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/preference/SwitchPreference;->sRecycle:Ljava/lang/reflect/Field;

    .line 113
    :goto_0
    sget-object v4, Lcom/meizu/common/preference/SwitchPreference;->sRecycle:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 115
    :cond_0
    sget-object v4, Lcom/meizu/common/preference/SwitchPreference;->sRecycle:Ljava/lang/reflect/Field;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_2

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_2
    sget-object v2, Lcom/meizu/common/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    return-void

    .line 111
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :try_start_1
    const-class v4, Landroid/preference/Preference;

    const-string v5, "mHasSpecifiedLayout"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/preference/SwitchPreference;->sRecycle:Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move v2, v3

    .line 115
    goto :goto_1
.end method

.method static synthetic access$100(Lcom/meizu/common/preference/SwitchPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/SwitchPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/common/preference/SwitchPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/preference/SwitchPreference;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/meizu/common/preference/SwitchPreference;->performPreferenceChanged()V

    return-void
.end method

.method private performPreferenceChanged()V
    .locals 3

    .prologue
    .line 287
    :try_start_0
    sget-object v0, Lcom/meizu/common/preference/SwitchPreference;->sOnPreferenceChanged:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 288
    const-class v0, Lcom/meizu/common/preference/SwitchPreference;

    const-string v1, "onPreferenceChange"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/preference/SwitchPreference;->sOnPreferenceChanged:Ljava/lang/reflect/Method;

    .line 289
    sget-object v0, Lcom/meizu/common/preference/SwitchPreference;->sOnPreferenceChanged:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 291
    :cond_0
    sget-object v0, Lcom/meizu/common/preference/SwitchPreference;->sOnPreferenceChanged:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/meizu/common/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/meizu/common/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 147
    const v4, 0x7f0d00e1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_4

    instance-of v4, v0, Landroid/widget/Checkable;

    if-eqz v4, :cond_4

    .line 151
    instance-of v4, v0, Lcom/meizu/common/widget/Switch;

    if-eqz v4, :cond_3

    move-object v2, v0

    .line 152
    check-cast v2, Lcom/meizu/common/widget/Switch;

    .line 153
    .local v2, "switchView":Lcom/meizu/common/widget/Switch;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/meizu/common/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 155
    const v4, 0x1020018

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 156
    .local v3, "widgetLayout":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Lcom/meizu/common/widget/Switch;

    iget-object v4, v4, Lcom/meizu/common/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 160
    .local v1, "contentDescription":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    :cond_2
    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    .end local v1    # "contentDescription":Ljava/lang/String;
    .end local v2    # "switchView":Lcom/meizu/common/widget/Switch;
    .end local v3    # "widgetLayout":Landroid/view/View;
    :cond_3
    instance-of v4, v0, Lcom/meizu/common/widget/Switch;

    if-eqz v4, :cond_6

    move-object v2, v0

    .line 172
    check-cast v2, Lcom/meizu/common/widget/Switch;

    .line 173
    .restart local v2    # "switchView":Lcom/meizu/common/widget/Switch;
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v4

    iget-boolean v5, p0, Lcom/meizu/common/preference/SwitchPreference;->mUseAnim:Z

    invoke-virtual {v2, v4, v5}, Lcom/meizu/common/widget/Switch;->setChecked(ZZ)V

    .line 174
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/meizu/common/preference/SwitchPreference;->mUseAnim:Z

    .line 175
    iget-object v4, p0, Lcom/meizu/common/preference/SwitchPreference;->mListener:Lcom/meizu/common/preference/SwitchPreference$Listener;

    invoke-virtual {v2, v4}, Lcom/meizu/common/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    .end local v0    # "checkableView":Landroid/view/View;
    .end local v2    # "switchView":Lcom/meizu/common/widget/Switch;
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->syncSummaryView(Landroid/view/View;)V

    .line 182
    return-void

    .restart local v0    # "checkableView":Landroid/view/View;
    .restart local v2    # "switchView":Lcom/meizu/common/widget/Switch;
    .restart local v3    # "widgetLayout":Landroid/view/View;
    :cond_5
    move-object v4, v0

    .line 157
    check-cast v4, Lcom/meizu/common/widget/Switch;

    iget-object v4, v4, Lcom/meizu/common/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 177
    .end local v2    # "switchView":Lcom/meizu/common/widget/Switch;
    .end local v3    # "widgetLayout":Landroid/view/View;
    :cond_6
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkableView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-interface {v0, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(ZZ)V

    .line 187
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 0
    .param p1, "checked"    # Z
    .param p2, "useAnim"    # Z

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 192
    iput-boolean p2, p0, Lcom/meizu/common/preference/SwitchPreference;->mUseAnim:Z

    .line 193
    return-void
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 266
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "offText"    # Ljava/lang/CharSequence;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/meizu/common/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 245
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->notifyChanged()V

    .line 246
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/CharSequence;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/meizu/common/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 232
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->notifyChanged()V

    .line 233
    return-void
.end method

.method syncSummaryView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 201
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 202
    .local v2, "summaryView":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 203
    const/4 v3, 0x1

    .line 205
    .local v3, "useDefaultSummary":Z
    if-eqz v3, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/meizu/common/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 207
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 208
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    const/4 v3, 0x0

    .line 213
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_0
    const/16 v0, 0x8

    .line 214
    .local v0, "newVisibility":I
    if-nez v3, :cond_1

    .line 216
    const/4 v0, 0x0

    .line 218
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 219
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    .end local v0    # "newVisibility":I
    .end local v3    # "useDefaultSummary":Z
    :cond_2
    return-void
.end method
