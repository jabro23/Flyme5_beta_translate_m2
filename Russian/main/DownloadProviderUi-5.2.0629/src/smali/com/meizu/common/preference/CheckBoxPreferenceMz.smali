.class public Lcom/meizu/common/preference/CheckBoxPreferenceMz;
.super Landroid/preference/CheckBoxPreference;
.source "CheckBoxPreferenceMz.java"


# static fields
.field private static sPerformClick:Ljava/lang/reflect/Method;

.field private static sRecycle:Ljava/lang/reflect/Field;


# instance fields
.field private mTextLayout:Landroid/view/View;

.field private mTextLayoutClickListener:Landroid/view/View$OnClickListener;

.field private mTextLayoutEnabled:Z

.field private mTextLayoutLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mWidgetFrame:Landroid/view/View;

.field private mWidgetFrameEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    .line 40
    iput-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    .line 54
    const v0, 0x7f040060

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setLayoutResource(I)V

    .line 56
    invoke-direct {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mzShouldRecycle()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    .line 40
    iput-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    .line 60
    const v0, 0x7f040060

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setLayoutResource(I)V

    .line 62
    invoke-direct {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mzShouldRecycle()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/preference/CheckBoxPreferenceMz;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/preference/CheckBoxPreferenceMz;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->performClick()V

    return-void
.end method

.method private mzShouldRecycle()V
    .locals 5

    .prologue
    const/16 v4, 0x13

    const/4 v1, 0x1

    .line 205
    :try_start_0
    sget-object v2, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sRecycle:Ljava/lang/reflect/Field;

    if-nez v2, :cond_0

    .line 206
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_1

    .line 207
    const-class v2, Landroid/preference/Preference;

    const-string v3, "mCanRecycleLayout"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sRecycle:Ljava/lang/reflect/Field;

    .line 211
    :goto_0
    sget-object v2, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sRecycle:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 213
    :cond_0
    sget-object v2, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sRecycle:Ljava/lang/reflect/Field;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    :goto_2
    return-void

    .line 209
    :cond_1
    const-class v2, Landroid/preference/Preference;

    const-string v3, "mHasSpecifiedLayout"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sRecycle:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private performClick()V
    .locals 6

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    :try_start_0
    sget-object v1, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sPerformClick:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 180
    const-class v1, Landroid/preference/CheckBoxPreference;

    const-string v2, "performClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/preference/PreferenceScreen;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sPerformClick:Ljava/lang/reflect/Method;

    .line 181
    sget-object v1, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sPerformClick:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 183
    :cond_0
    sget-object v1, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sPerformClick:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 160
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 161
    check-cast v1, Landroid/view/ViewGroup;

    .line 162
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 163
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 162
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 166
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method


# virtual methods
.method public isTextLayoutEnabled()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    return v0
.end method

.method public isWidgetFrameEnabled()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    if-nez v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    iget-boolean v5, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    invoke-direct {p0, v4, v5}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    if-nez v4, :cond_1

    .line 97
    iget-object v4, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    iget-boolean v5, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    invoke-direct {p0, v4, v5}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 99
    :cond_1
    const v4, 0x1020001

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, "checkableView":Landroid/view/View;
    if-eqz v1, :cond_6

    instance-of v4, v1, Landroid/widget/Checkable;

    if-eqz v4, :cond_6

    .line 102
    instance-of v4, v1, Landroid/widget/CheckBox;

    if-eqz v4, :cond_5

    move-object v0, v1

    .line 103
    check-cast v0, Landroid/widget/CheckBox;

    .line 105
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "checkedDescription":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 108
    .local v3, "contentDescription":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    :cond_3
    iget-object v4, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 115
    iget-object v4, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v2    # "checkedDescription":Ljava/lang/String;
    .end local v3    # "contentDescription":Ljava/lang/String;
    :cond_5
    check-cast v1, Landroid/widget/Checkable;

    .end local v1    # "checkableView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->isChecked()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 124
    :cond_6
    return-void

    .line 105
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    .restart local v1    # "checkableView":Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f0d0104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 77
    :cond_1
    const v1, 0x1020018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    .line 78
    iget-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    new-instance v2, Lcom/meizu/common/preference/CheckBoxPreferenceMz$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz$1;-><init>(Lcom/meizu/common/preference/CheckBoxPreferenceMz;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-object v0
.end method

.method public setTextLayoutClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutClickListener:Landroid/view/View$OnClickListener;

    .line 171
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_0
    return-void
.end method

.method public setTextLayoutEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    if-eq v0, p1, :cond_0

    .line 128
    iput-boolean p1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    .line 130
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public setTextLayoutLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 191
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 194
    :cond_0
    return-void
.end method

.method public setWidgetFrameEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    if-eq v0, p1, :cond_0

    .line 142
    iput-boolean p1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    .line 144
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 148
    :cond_0
    return-void
.end method
