.class public Lcom/meizu/common/widget/AnimCheckBox;
.super Landroid/widget/CheckBox;
.source "AnimCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;,
        Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;
    }
.end annotation


# instance fields
.field private checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

.field private mActivated:Z

.field mInitVisible:I

.field private mUpdateListener:Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/AnimCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/AnimCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimCheckBox;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mInitVisible:I

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AnimCheckBox;->setIsAnimation(Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimCheckBox;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mInitVisible:I

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AnimCheckBox;->setIsAnimation(Z)V

    .line 54
    return-void
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/AnimCheckBox;)Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimCheckBox;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mUpdateListener:Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;

    return-object v0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 309
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mActivated:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 310
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 320
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mActivated:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 321
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mActivated:Z

    if-eq v0, p1, :cond_0

    .line 78
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox;->mActivated:Z

    .line 79
    const v0, 0x8000

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AnimCheckBox;->sendAccessibilityEvent(I)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    if-nez v0, :cond_1

    .line 82
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setActivated(Z)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->setActivated(Z)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    if-nez v0, :cond_0

    .line 69
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->setChecked(Z)V

    goto :goto_0
.end method

.method public setInitVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 61
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 62
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/AnimCheckBox;->mInitVisible:I

    .line 64
    :cond_1
    return-void
.end method

.method public setIsAnimation(Z)V
    .locals 1
    .param p1, "isAnimation"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;-><init>(Lcom/meizu/common/widget/AnimCheckBox;)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->setIsAnimation(Z)V

    .line 97
    return-void
.end method

.method public setUpdateListner(Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox;->mUpdateListener:Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;

    .line 132
    return-void
.end method

.method public superSetActivate(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setActivated(Z)V

    .line 113
    return-void
.end method

.method public superSetCheck(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 105
    return-void
.end method
