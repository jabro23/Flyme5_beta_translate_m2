.class Landroid/support/v7/app/AppCompatDelegateImplV11;
.super Landroid/support/v7/app/AppCompatDelegateImplV7;
.source "AppCompatDelegateImplV11.java"

# interfaces
.implements Landroid/support/v7/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV7;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 39
    return-void
.end method

.method private checkMultiChoiceMode(Landroid/view/ActionMode$Callback;)Z
    .locals 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, "isMulti":Z
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "className":Ljava/lang/String;
    const-string v2, "android.widget.AbsListView$MultiChoiceModeWrapper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "flyme.support.v7.widget.MzRecyclerView$MultiChoiceModeWrapper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    :cond_0
    const/4 v1, 0x1

    .line 112
    :cond_1
    return v1
.end method


# virtual methods
.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 96
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .line 91
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV11;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/view/LayoutInflater$Factory2;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV11;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "subDecor"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV11;->mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    .line 48
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV11;->mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV11;->mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->setActionModeForChildListener(Landroid/support/v7/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;)V

    .line 51
    :cond_0
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 6
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 63
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0, p2}, Landroid/support/v7/app/AppCompatDelegateImplV11;->checkMultiChoiceMode(Landroid/view/ActionMode$Callback;)Z

    move-result v2

    .line 65
    .local v2, "isMultiChoiceMode":Z
    if-eqz v2, :cond_1

    .line 66
    new-instance v0, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;

    invoke-direct {v0, v1, p2}, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 67
    .local v0, "callbackWrapper":Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->startMultiChoiceActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v3

    .line 68
    .local v3, "supportActionMode":Landroid/support/v7/view/ActionMode;
    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v3

    .line 75
    .end local v0    # "callbackWrapper":Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 77
    new-instance v4, Landroid/support/v7/internal/view/SupportActionModeWrapper;

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV11;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Landroid/support/v7/internal/view/SupportActionModeWrapper;-><init>(Landroid/content/Context;Landroid/support/v7/view/ActionMode;)V

    .line 79
    :goto_1
    return-object v4

    .line 70
    .end local v3    # "supportActionMode":Landroid/support/v7/view/ActionMode;
    :cond_1
    new-instance v4, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;

    invoke-direct {v4, v1, p2}, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV11;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v3

    .restart local v3    # "supportActionMode":Landroid/support/v7/view/ActionMode;
    goto :goto_0

    .line 79
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
