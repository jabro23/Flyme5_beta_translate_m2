.class Landroid/support/v7/internal/widget/ViewUtils$1$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/ViewUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ViewUtils$1;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ViewUtils$1;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Landroid/support/v7/internal/widget/ViewUtils$1$1;->this$0:Landroid/support/v7/internal/widget/ViewUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/v7/internal/widget/ViewUtils$1$1;->this$0:Landroid/support/v7/internal/widget/ViewUtils$1;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ViewUtils$1;->val$view:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 164
    return-void
.end method
