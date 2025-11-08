.class final Lcom/heytap/accessory/discovery/BaseManager$a;
.super Ljava/lang/Object;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/discovery/BaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Lcom/heytap/accessory/discovery/IManagerCallback;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/discovery/IManagerCallback;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/heytap/accessory/discovery/BaseManager$a;->a:Z

    .line 183
    iput-object p1, p0, Lcom/heytap/accessory/discovery/BaseManager$a;->b:Lcom/heytap/accessory/discovery/IManagerCallback;

    return-void
.end method
