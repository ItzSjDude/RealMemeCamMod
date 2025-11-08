.class public Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoRetainParams;
.super Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoParams;
.source "HumanVideoApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanVideoApiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanVideoRetainParams"
.end annotation


# instance fields
.field public bgPath:Ljava/lang/String;

.field public fgPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoParams;-><init>()V

    return-void
.end method


# virtual methods
.method public mappingSDK()Lcom/anc/humanvideo/HumanVideoApi$HumanVideoParams;
    .locals 2

    .line 110
    new-instance v0, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoRetainParams;

    invoke-direct {v0}, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoRetainParams;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoRetainParams;->fgPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoRetainParams;->fgPath:Ljava/lang/String;

    .line 112
    iget-object p0, p0, Lcom/oplus/ocs/camera/HumanVideoApiHelper$HumanVideoRetainParams;->bgPath:Ljava/lang/String;

    iput-object p0, v0, Lcom/anc/humanvideo/HumanVideoApi$HumanVideoRetainParams;->bgPath:Ljava/lang/String;

    return-object v0
.end method
