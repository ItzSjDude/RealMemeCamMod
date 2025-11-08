.class public final synthetic Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$b;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/ui/menu/setting/p;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/ui/menu/setting/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;->f$0:Lcom/oplus/camera/ui/menu/setting/p;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;->f$0:Lcom/oplus/camera/ui/menu/setting/p;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/p;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
