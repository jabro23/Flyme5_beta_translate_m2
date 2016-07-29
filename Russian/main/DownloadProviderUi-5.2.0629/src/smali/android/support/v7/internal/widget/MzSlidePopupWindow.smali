.class public Landroid/support/v7/internal/widget/MzSlidePopupWindow;
.super Landroid/support/v7/internal/widget/AppCompatPopupWindow;
.source "MzSlidePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;,
        Landroid/support/v7/internal/widget/MzSlidePopupWindow$SlidePopupViewContainer;
    }
.end annotation


# instance fields
.field private isDetachedFromWindow:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissAnimator:Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;

.field private mDrawingLocation:[I

.field private mOnTop:Z

.field private mScreenLocation:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x2

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v1, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;-><init>(Landroid/support/v7/internal/widget/MzSlidePopupWindow;Landroid/support/v7/internal/widget/MzSlidePopupWindow$1;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mDismissAnimator:Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;

    .line 48
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mDrawingLocation:[I

    .line 49
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mScreenLocation:[I

    .line 55
    iput-object p1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 57
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 58
    .local v0, "background":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->setSupperMzClippingEnabled(Z)V

    .line 60
    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    .prologue
    .line 40
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mOnTop:Z

    return v0
.end method

.method private findPosition(Landroid/view/View;III)Z
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    const/4 v3, 0x1

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 76
    .local v0, "anchorHeight":I
    iget-object v4, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 77
    iget-object v4, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mScreenLocation:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "onTop":Z
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 80
    .local v1, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 81
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mScreenLocation:[I

    aget v5, v5, v3

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    sub-int/2addr v4, p3

    iget-object v5, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mScreenLocation:[I

    aget v5, v5, v3

    sub-int/2addr v5, p3

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_0

    move v2, v3

    .line 83
    :goto_0
    return v2

    .line 81
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private preparePopup()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 87
    iget-object v2, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->setWidth(I)V

    .line 88
    invoke-virtual {p0, v3, v3}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->setWindowLayoutMode(II)V

    .line 89
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mOnTop:Z

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 91
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    iget-object v2, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 95
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Landroid/support/v7/internal/widget/MzSlidePopupWindow$1;

    invoke-direct {v2, p0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow$1;-><init>(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 108
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->dismiss(Z)V

    .line 113
    return-void
.end method

.method public dismiss(Z)V
    .locals 1
    .param p1, "isSlide"    # Z

    .prologue
    .line 116
    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mDismissAnimator:Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mDismissAnimator:Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->start()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-super {p0}, Landroid/support/v7/internal/widget/AppCompatPopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/support/v7/internal/widget/AppCompatPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->isDetachedFromWindow:Z

    .line 170
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->isDetachedFromWindow:Z

    .line 175
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    :goto_0
    return-void

    .line 149
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;

    .line 151
    iget-object v2, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContext:Landroid/content/Context;

    .line 154
    :cond_1
    const/4 v1, 0x0

    .line 155
    .local v1, "popupViewContainer":Landroid/support/v7/internal/widget/MzSlidePopupWindow$SlidePopupViewContainer;
    iget-object v2, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 156
    iget-object v2, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    new-instance v1, Landroid/support/v7/internal/widget/MzSlidePopupWindow$SlidePopupViewContainer;

    .end local v1    # "popupViewContainer":Landroid/support/v7/internal/widget/MzSlidePopupWindow$SlidePopupViewContainer;
    iget-object v2, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/widget/MzSlidePopupWindow$SlidePopupViewContainer;-><init>(Landroid/support/v7/internal/widget/MzSlidePopupWindow;Landroid/content/Context;)V

    .line 158
    .restart local v1    # "popupViewContainer":Landroid/support/v7/internal/widget/MzSlidePopupWindow$SlidePopupViewContainer;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v0, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow$SlidePopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {v1, p0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow$SlidePopupViewContainer;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 164
    .end local v0    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-super {p0, v1}, Landroid/support/v7/internal/widget/AppCompatPopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setSupperMzClippingEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 135
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    .line 136
    .local v0, "clazz":Ljava/lang/Class;
    const-string v2, "setMzClippingEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 137
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 138
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->findPosition(Landroid/view/View;III)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mOnTop:Z

    .line 65
    invoke-direct {p0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->preparePopup()V

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/widget/AppCompatPopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 67
    return-void
.end method

.method public supperDismiss()V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->isDetachedFromWindow:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/AppCompatPopupWindow;->dismiss()V

    .line 127
    :cond_0
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v4, -0x1

    .line 71
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-super/range {v0 .. v5}, Landroid/support/v7/internal/widget/AppCompatPopupWindow;->update(Landroid/view/View;IIII)V

    .line 72
    return-void
.end method
