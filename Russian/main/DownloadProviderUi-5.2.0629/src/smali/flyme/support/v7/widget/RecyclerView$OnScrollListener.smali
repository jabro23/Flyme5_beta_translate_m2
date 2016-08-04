.class public abstract Lflyme/support/v7/widget/RecyclerView$OnScrollListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnScrollListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lflyme/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 8812
    return-void
.end method

.method public onScrolled(Lflyme/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 8825
    return-void
.end method
