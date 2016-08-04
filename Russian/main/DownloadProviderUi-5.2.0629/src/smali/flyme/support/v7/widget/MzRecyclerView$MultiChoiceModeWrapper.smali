.class Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "MzRecyclerView.java"

# interfaces
.implements Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/MzRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

.field final synthetic this$0:Lflyme/support/v7/widget/MzRecyclerView;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/MzRecyclerView;)V
    .locals 0

    .prologue
    .line 1071
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1105
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1084
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    invoke-interface {v2, p1, p2}, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1086
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v2, v2, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v2, v2, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 1089
    :cond_0
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/MzRecyclerView;->setLongClickable(Z)V

    .line 1095
    :goto_0
    return v0

    .line 1091
    :cond_1
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/MzRecyclerView;->setLongClickable(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1095
    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1110
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 1115
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1118
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView;->clearChoices()V

    .line 1120
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->updateOnScreenCheckedViews()V
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1700(Lflyme/support/v7/widget/MzRecyclerView;)V

    .line 1122
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->setLongClickable(Z)V

    .line 1123
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 1128
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1130
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1138
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1100
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    .prologue
    .line 1075
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    .line 1076
    return-void
.end method
