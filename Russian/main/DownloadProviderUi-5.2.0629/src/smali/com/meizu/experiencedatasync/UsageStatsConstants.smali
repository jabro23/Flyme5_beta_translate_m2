.class public final Lcom/meizu/experiencedatasync/UsageStatsConstants;
.super Ljava/lang/Object;
.source "UsageStatsConstants.java"


# static fields
.field public static EVENTS_PARCEL_LIMIT:I

.field public static MAX_EVENT_RECORD:I

.field public static OFFLINE_MOBILE_EVENTS_PARCEL_LIMIT:I

.field public static ONLINE_EVENTS_PARCEL_LIMIT:I

.field public static ONLINE_EVENTS_THRESHOLD:I

.field public static ONLINE_MAX_EVENT_RECORD:I

.field public static PREFERENCES_UMID:Ljava/lang/String;

.field public static PREFERENCES_UMID_MAC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x190

    sput v0, Lcom/meizu/experiencedatasync/UsageStatsConstants;->EVENTS_PARCEL_LIMIT:I

    .line 12
    const/16 v0, 0x12c

    sput v0, Lcom/meizu/experiencedatasync/UsageStatsConstants;->OFFLINE_MOBILE_EVENTS_PARCEL_LIMIT:I

    .line 13
    const/16 v0, 0xc8

    sput v0, Lcom/meizu/experiencedatasync/UsageStatsConstants;->ONLINE_EVENTS_PARCEL_LIMIT:I

    .line 15
    const/16 v0, 0x2710

    sput v0, Lcom/meizu/experiencedatasync/UsageStatsConstants;->ONLINE_MAX_EVENT_RECORD:I

    .line 16
    const v0, 0xc350

    sput v0, Lcom/meizu/experiencedatasync/UsageStatsConstants;->MAX_EVENT_RECORD:I

    .line 17
    const/16 v0, 0x32

    sput v0, Lcom/meizu/experiencedatasync/UsageStatsConstants;->ONLINE_EVENTS_THRESHOLD:I

    .line 38
    const-string v0, "umid"

    sput-object v0, Lcom/meizu/experiencedatasync/UsageStatsConstants;->PREFERENCES_UMID:Ljava/lang/String;

    .line 39
    const-string v0, "umid_mac"

    sput-object v0, Lcom/meizu/experiencedatasync/UsageStatsConstants;->PREFERENCES_UMID_MAC:Ljava/lang/String;

    return-void
.end method
