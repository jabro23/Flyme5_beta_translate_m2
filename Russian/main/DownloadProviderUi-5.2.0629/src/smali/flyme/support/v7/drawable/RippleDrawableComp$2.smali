.class Lflyme/support/v7/drawable/RippleDrawableComp$2;
.super Ljava/lang/Object;
.source "RippleDrawableComp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/drawable/RippleDrawableComp;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/drawable/RippleDrawableComp;


# direct methods
.method constructor <init>(Lflyme/support/v7/drawable/RippleDrawableComp;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$2;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp$2;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    # invokes: Lflyme/support/v7/drawable/RippleDrawableComp;->initValue()V
    invoke-static {v0}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$000(Lflyme/support/v7/drawable/RippleDrawableComp;)V

    .line 127
    return-void
.end method
