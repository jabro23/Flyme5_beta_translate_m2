.class Lflyme/support/v7/widget/MzRecyclerView$1;
.super Ljava/lang/Object;
.source "MzRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/MzRecyclerView;->startMultiChoice()Z
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
    .line 1223
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$1;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$1;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView;->requestLayout()V

    .line 1226
    return-void
.end method
