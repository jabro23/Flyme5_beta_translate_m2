.class Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton$1;
.super Ljava/lang/Object;
.source "MzActionBarTabContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;-><init>(Lflyme/support/v7/internal/widget/MzActionBarTabContainer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;

.field final synthetic val$this$0:Lflyme/support/v7/internal/widget/MzActionBarTabContainer;


# direct methods
.method constructor <init>(Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;Lflyme/support/v7/internal/widget/MzActionBarTabContainer;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton$1;->this$1:Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;

    iput-object p2, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton$1;->val$this$0:Lflyme/support/v7/internal/widget/MzActionBarTabContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton$1;->this$1:Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;

    iget-object v0, v0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;->this$0:Lflyme/support/v7/internal/widget/MzActionBarTabContainer;

    # getter for: Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mCollapseButtonClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->access$000(Lflyme/support/v7/internal/widget/MzActionBarTabContainer;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton$1;->this$1:Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;

    iget-object v0, v0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;->this$0:Lflyme/support/v7/internal/widget/MzActionBarTabContainer;

    # getter for: Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mCollapseButtonClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->access$000(Lflyme/support/v7/internal/widget/MzActionBarTabContainer;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 168
    :cond_0
    return-void
.end method
