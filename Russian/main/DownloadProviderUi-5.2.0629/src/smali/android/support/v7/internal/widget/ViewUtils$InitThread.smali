.class Landroid/support/v7/internal/widget/ViewUtils$InitThread;
.super Ljava/lang/Thread;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ViewUtils$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/internal/widget/ViewUtils$1;

    .prologue
    .line 227
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ViewUtils$InitThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 231
    # invokes: Landroid/support/v7/internal/widget/ViewUtils;->getComputeFitSystemWindowsMethod()V
    invoke-static {}, Landroid/support/v7/internal/widget/ViewUtils;->access$200()V

    .line 232
    return-void
.end method
