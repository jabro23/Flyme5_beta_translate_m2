.class Lflyme/support/v7/widget/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 60
    iput p2, p0, Lflyme/support/v7/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    .line 61
    iput p3, p0, Lflyme/support/v7/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    .line 62
    iput p4, p0, Lflyme/support/v7/widget/DefaultItemAnimator$MoveInfo;->toX:I

    .line 63
    iput p5, p0, Lflyme/support/v7/widget/DefaultItemAnimator$MoveInfo;->toY:I

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIIILflyme/support/v7/widget/DefaultItemAnimator$1;)V
    .locals 0
    .param p1, "x0"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lflyme/support/v7/widget/DefaultItemAnimator$1;

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lflyme/support/v7/widget/DefaultItemAnimator$MoveInfo;-><init>(Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method
