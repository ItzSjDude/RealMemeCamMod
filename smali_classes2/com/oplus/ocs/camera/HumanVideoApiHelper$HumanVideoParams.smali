.class public Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoParams;
.super Ljava/lang/Object;
.source "HumanVideoApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanVideoApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanVideoParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mappingSDK()Lcom/anc/humanvideo/HumanVideoApi$HumanVideoParams;
    .locals 0

    .line 138
    new-instance p0, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoParams;

    invoke-direct {p0}, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoParams;-><init>()V

    return-object p0
.end method
