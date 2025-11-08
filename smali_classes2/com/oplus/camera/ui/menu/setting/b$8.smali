.class Lcom/oplus/camera/ui/menu/setting/b$8;
.super Landroid/content/BroadcastReceiver;
.source "BaseLocationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/setting/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/setting/b;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/b$8;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b$8;->a:Lcom/oplus/camera/ui/menu/setting/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->m()V

    return-void
.end method
