.class Landroid/support/v7/internal/widget/MzSlidePopupWindow$SlidePopupViewContainer;
.super Landroid/widget/FrameLayout;
.source "MzSlidePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/MzSlidePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidePopupViewContainer"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/MzSlidePopupWindow;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    iput-object p1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$SlidePopupViewContainer;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    .line 181
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 182
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 188
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$SlidePopupViewContainer;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->dismiss(Z)V

    .line 191
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$SlidePopupViewContainer;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    # getter for: Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->access$100(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$SlidePopupViewContainer;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    # getter for: Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->access$100(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method
