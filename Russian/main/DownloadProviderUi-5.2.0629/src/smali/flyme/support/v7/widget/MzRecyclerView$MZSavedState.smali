.class Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;
.super Landroid/view/View$BaseSavedState;
.source "MzRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/MzRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MZSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checkIdState:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field checkState:Landroid/util/SparseBooleanArray;

.field checkedItemCount:I

.field inActionMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1305
    new-instance v0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState$1;

    invoke-direct {v0}, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState$1;-><init>()V

    sput-object v0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1269
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1270
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;->inActionMode:Z

    .line 1271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;->checkedItemCount:I

    .line 1272
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v5

    iput-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1274
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 1275
    new-instance v5, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v5}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    .line 1276
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1277
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1278
    .local v2, "key":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1279
    .local v4, "value":I
    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v6}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1276
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1270
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "key":J
    .end local v4    # "value":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 1282
    .restart local v0    # "N":I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lflyme/support/v7/widget/MzRecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lflyme/support/v7/widget/MzRecyclerView$1;

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MzRecyclerView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " checkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;->checkState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 1286
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1287
    iget-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;->inActionMode:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1288
    iget v2, p0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;->checkedItemCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;->checkState:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 1290
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    .line 1291
    .local v0, "N":I
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 1293
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1294
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$MZSavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    move v2, v3

    .line 1287
    goto :goto_0

    :cond_1
    move v0, v3

    .line 1290
    goto :goto_1

    .line 1296
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method
