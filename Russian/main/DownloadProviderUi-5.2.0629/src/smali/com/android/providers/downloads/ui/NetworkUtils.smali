.class public Lcom/android/providers/downloads/ui/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 24
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 25
    .local v1, "info":Landroid/net/NetworkInfo;
    return-object v1
.end method

.method public static translateNetworkTypeToApiFlag(I)I
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 44
    sparse-switch p0, :sswitch_data_0

    .line 55
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 52
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method
