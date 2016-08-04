.class Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "EnhanceGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpinnerItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .locals 0

    .prologue
    .line 2943
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2947
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2948
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v1, p1}, Lcom/meizu/common/widget/EnhanceGallery;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 2949
    .local v0, "position":I
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v1, p1, v0, p2}, Lcom/meizu/common/widget/EnhanceGallery;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2950
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 2954
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2955
    const/4 v0, 0x1

    .line 2957
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
