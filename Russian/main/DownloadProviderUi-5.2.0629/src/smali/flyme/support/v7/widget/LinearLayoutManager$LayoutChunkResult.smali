.class public Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LayoutChunkResult"
.end annotation


# instance fields
.field public mConsumed:I

.field public mFinished:Z

.field public mFocusable:Z

.field public mIgnoreConsumed:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 2228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method resetInternal()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2235
    iput v0, p0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 2236
    iput-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 2237
    iput-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 2238
    iput-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 2239
    return-void
.end method