.class Landroidx/fragment/app/c$a;
.super Landroidx/fragment/app/g;
.source "FragmentActivity.java"

# interfaces
.implements Landroidx/activity/d;
.implements Landroidx/lifecycle/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/g<",
        "Landroidx/fragment/app/c;",
        ">;",
        "Landroidx/activity/d;",
        "Landroidx/lifecycle/t;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/c;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/c;)V
    .locals 0

    .line 871
    iput-object p1, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    .line 872
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/c;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 0

    .line 977
    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 933
    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/c;->a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object v0, p0

    .line 941
    iget-object v0, v0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroidx/fragment/app/c;->a(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 0

    .line 948
    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/c;->a(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 900
    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/c;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 982
    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 983
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    .line 905
    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->isFinishing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 954
    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-static {p0, p1}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public b()Landroidx/activity/OnBackPressedDispatcher;
    .locals 0

    .line 894
    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->b()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 971
    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public c()Landroid/view/LayoutInflater;
    .locals 1

    .line 911
    iget-object v0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public d()Landroidx/fragment/app/c;
    .locals 0

    .line 916
    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    return-object p0
.end method

.method public e()V
    .locals 0

    .line 921
    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->d()V

    return-void
.end method

.method public f()Z
    .locals 0

    .line 960
    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()I
    .locals 0

    .line 965
    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 966
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_0
    return p0
.end method

.method public getLifecycle()Landroidx/lifecycle/e;
    .locals 0

    .line 882
    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    iget-object p0, p0, Landroidx/fragment/app/c;->b_:Landroidx/lifecycle/i;

    return-object p0
.end method

.method public getViewModelStore()Landroidx/lifecycle/s;
    .locals 0

    .line 888
    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroidx/fragment/app/c;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getViewModelStore()Landroidx/lifecycle/s;

    move-result-object p0

    return-object p0
.end method

.method public synthetic h()Ljava/lang/Object;
    .locals 0

    .line 868
    invoke-virtual {p0}, Landroidx/fragment/app/c$a;->d()Landroidx/fragment/app/c;

    move-result-object p0

    return-object p0
.end method
