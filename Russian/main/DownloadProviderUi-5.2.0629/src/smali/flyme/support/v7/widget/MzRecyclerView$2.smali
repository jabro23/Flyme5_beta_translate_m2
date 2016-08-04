.class Lflyme/support/v7/widget/MzRecyclerView$2;
.super Ljava/lang/Object;
.source "MzRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/MzRecyclerView;->onLayoutExt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/MzRecyclerView;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/MzRecyclerView;)V
    .locals 0

    .prologue
    .line 1237
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$2;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1239
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$2;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView;->startMultiChoice()Z

    .line 1240
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$2;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v1, 0x0

    # setter for: Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->access$2002(Lflyme/support/v7/widget/MzRecyclerView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1241
    return-void
.end method
