.class public Lcom/meizu/common/widget/VerticalSeekBar;
.super Lcom/meizu/common/widget/AbsSeekBar;
.source "VerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const v0, 0x7f01010f

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    sget-object v1, Lcom/meizu/common/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/VerticalSeekBar;->setBreakPoint(I)V

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/VerticalSeekBar;->setIsVertical(Z)V

    .line 91
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/VerticalSeekBar;->setTouchMode(I)V

    .line 92
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 134
    const-class v0, Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method onProgressRefresh(FZ)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/AbsSeekBar;->onProgressRefresh(FZ)V

    .line 98
    iget-object v0, p0, Lcom/meizu/common/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/meizu/common/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/meizu/common/widget/VerticalSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;->onProgressChanged(Lcom/meizu/common/widget/VerticalSeekBar;IZ)V

    .line 101
    :cond_0
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 118
    iget-object v0, p0, Lcom/meizu/common/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/meizu/common/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;->onStartTrackingTouch(Lcom/meizu/common/widget/VerticalSeekBar;)V

    .line 121
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 126
    iget-object v0, p0, Lcom/meizu/common/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/meizu/common/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;->onStopTrackingTouch(Lcom/meizu/common/widget/VerticalSeekBar;)V

    .line 129
    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/meizu/common/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    .line 113
    return-void
.end method
