.class Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl$1;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v7/view/ActionMode$BackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl;)V
    .locals 0

    .prologue
    .line 1104
    iput-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl$1;->this$1:Landroid/support/v7/internal/app/WindowDecorActionBar$ActionModeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1107
    const/4 v0, 0x1

    return v0
.end method
