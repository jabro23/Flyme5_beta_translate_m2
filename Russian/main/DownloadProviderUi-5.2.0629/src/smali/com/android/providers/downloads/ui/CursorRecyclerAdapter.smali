.class public abstract Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;
.super Lflyme/support/v7/widget/RecyclerView$Adapter;
.source "CursorRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Lflyme/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;"
    }
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field mIdsCursorPos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mPositonIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;, "Lcom/android/providers/downloads/ui/CursorRecyclerAdapter<TVH;>;"
    .local p2, "posids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "curspos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    .line 18
    iput-object p2, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mPositonIds:Ljava/util/List;

    .line 19
    iput-object p3, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mIdsCursorPos:Ljava/util/HashMap;

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->setHasStableIds(Z)V

    .line 21
    return-void
.end method

.method private checkItemId(J)Z
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 58
    .local p0, "this":Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;, "Lcom/android/providers/downloads/ui/CursorRecyclerAdapter<TVH;>;"
    const/4 v2, 0x0

    .line 59
    .local v2, "needReQuery":Z
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_1

    .line 60
    :cond_0
    const/4 v3, 0x1

    .line 71
    :goto_0
    return v3

    .line 63
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mIdsCursorPos:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 64
    iget-object v3, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 65
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v1, v3, :cond_2

    .line 66
    const/4 v2, 0x1

    .end local v1    # "index":I
    :cond_2
    :goto_1
    move v3, v2

    .line 71
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public CursorRefresh(Landroid/database/Cursor;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p3, "curspos"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;, "Lcom/android/providers/downloads/ui/CursorRecyclerAdapter<TVH;>;"
    .local p2, "posids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    .line 35
    iput-object p2, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mPositonIds:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mIdsCursorPos:Ljava/util/HashMap;

    .line 38
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->notifyDataSetChanged()V

    .line 39
    return-void
.end method

.method public CursorSwap(Landroid/database/Cursor;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p3, "curspos"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;, "Lcom/android/providers/downloads/ui/CursorRecyclerAdapter<TVH;>;"
    .local p2, "posids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    .line 26
    iput-object p2, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mPositonIds:Ljava/util/List;

    .line 27
    iput-object p3, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mIdsCursorPos:Ljava/util/HashMap;

    .line 29
    iget-object v0, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mPositonIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->notifyItemChanged(I)V

    .line 30
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;, "Lcom/android/providers/downloads/ui/CursorRecyclerAdapter<TVH;>;"
    iget-object v0, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mPositonIds:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mPositonIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    .local p0, "this":Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;, "Lcom/android/providers/downloads/ui/CursorRecyclerAdapter<TVH;>;"
    iget-object v0, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mPositonIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mPositonIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mPositonIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 54
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;, "Lcom/android/providers/downloads/ui/CursorRecyclerAdapter<TVH;>;"
    .local p1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->checkItemId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;->onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;JI)V

    goto :goto_0
.end method

.method public abstract onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Landroid/database/Cursor;",
            "JI)V"
        }
    .end annotation
.end method
