.class public Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanProcessResult;
.super Ljava/lang/Object;
.source "HumanVideoApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanVideoApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanProcessResult"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method mappingSDKObject()Lcom/anc/humanvideo/HumanVideoApi$HumanProcessResult;
    .locals 0

    .line 95
    new-instance p0, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessResult;

    invoke-direct {p0}, Lcom/anc/humanvideo/HumanVideoApi$HumanProcessResult;-><init>()V

    return-object p0
.end method
