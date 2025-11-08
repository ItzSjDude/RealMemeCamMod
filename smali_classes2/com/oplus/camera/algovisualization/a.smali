.class public Lcom/oplus/camera/algovisualization/a;
.super Ljava/lang/Object;
.source "AlgoListProcessor.java"


# direct methods
.method public static a()J
    .locals 2

    .line 361
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(JJ)Ljava/lang/String;
    .locals 1

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sub-long/2addr p2, p0

    const-wide/32 p0, 0xf4240

    div-long/2addr p2, p0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 347
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 348
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    .line 251
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 254
    aget-object v2, p0, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "[0]"

    return-object p0
.end method

.method public static a([Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const-string p0, "[]"

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    if-nez p0, :cond_1

    .line 321
    invoke-static {p1}, Lcom/oplus/camera/algovisualization/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    if-nez p1, :cond_4

    .line 323
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 325
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 326
    aget-object v1, p0, v0

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 327
    aget-object v1, p0, v0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 333
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 334
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 337
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    invoke-static {p0}, Lcom/oplus/camera/algovisualization/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static a([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const-string p0, "[]"

    goto/16 :goto_3

    :cond_0
    const-string v0, "none"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_3

    .line 271
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 274
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    if-nez p1, :cond_6

    .line 281
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_5

    .line 284
    aget-object v2, p0, v1

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 285
    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 289
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 291
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 292
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_8

    .line 299
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 300
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 304
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    const-string p1, "portrait"

    .line 307
    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_9
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/text/SpannableStringBuilder;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, ";"

    move-object/from16 v2, p0

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 53
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 55
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_f

    const/16 v7, 0xe

    const-string v8, "none"

    if-eq v7, v6, :cond_0

    const/16 v7, 0x10

    if-eq v7, v6, :cond_0

    .line 57
    aget-object v7, v1, v6

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "\n"

    if-eqz v6, :cond_d

    const/4 v9, 0x1

    if-eq v6, v9, :cond_c

    const/4 v9, 0x7

    if-eq v6, v9, :cond_a

    const/16 v9, 0x8

    const/16 v10, 0x22

    if-eq v6, v9, :cond_8

    const/16 v9, 0x9

    if-eq v6, v9, :cond_7

    const-string v9, ","

    const/16 v10, 0x14

    packed-switch v6, :pswitch_data_0

    .line 194
    aget-object v8, v1, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v10, :cond_1

    .line 195
    aget-object v7, v1, v6

    const/4 v8, 0x3

    invoke-static {v7, v8, v3, v4}, Lcom/oplus/camera/algovisualization/a;->a(Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V

    goto :goto_1

    .line 200
    :cond_1
    aget-object v8, v2, v6

    invoke-static {v3, v8}, Lcom/oplus/camera/algovisualization/a;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 201
    aget-object v8, v1, v6

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 202
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_1
    move-object/from16 v12, p2

    move-object/from16 v11, p3

    goto :goto_4

    .line 164
    :pswitch_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_3

    aget-object v11, v1, v6

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "PreAlgoList: "

    .line 165
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 166
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 168
    invoke-static {}, Lcom/oplus/camera/algovisualization/g;->b()I

    move-result v8

    if-lez v8, :cond_2

    const-string v8, "[ASD:0ms, FB:0ms]"

    .line 169
    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_2
    const-string v8, "[ASD:0ms]"

    .line 171
    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 174
    :goto_2
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 179
    :cond_3
    aget-object v8, v2, v6

    invoke-static {v3, v8}, Lcom/oplus/camera/algovisualization/a;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 181
    aget-object v8, v1, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v11, p3

    .line 182
    invoke-static {v8, v11}, Lcom/oplus/camera/algovisualization/a;->a([Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    .line 184
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v10, :cond_4

    const/4 v7, 0x2

    .line 185
    invoke-static {v8, v7, v3, v4}, Lcom/oplus/camera/algovisualization/a;->a(Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V

    goto :goto_3

    .line 187
    :cond_4
    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 188
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :pswitch_1
    move-object/from16 v11, p3

    :goto_3
    move-object/from16 v12, p2

    :goto_4
    move/from16 v9, p4

    move-object/from16 v13, p5

    goto/16 :goto_7

    :pswitch_2
    move-object/from16 v11, p3

    .line 141
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_5

    aget-object v12, v1, v6

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    .line 145
    :cond_5
    aget-object v8, v2, v6

    invoke-static {v3, v8}, Lcom/oplus/camera/algovisualization/a;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 147
    aget-object v8, v1, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v6, 0x1

    .line 148
    aget-object v9, v1, v9

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    invoke-static {v8, v12, v9, v13}, Lcom/oplus/camera/algovisualization/a;->a([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 151
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v10, :cond_6

    const/4 v7, 0x4

    .line 152
    invoke-static {v8, v7, v3, v4}, Lcom/oplus/camera/algovisualization/a;->a(Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V

    goto :goto_5

    .line 154
    :cond_6
    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 155
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    :pswitch_3
    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    .line 131
    aget-object v8, v2, v6

    invoke-static {v3, v8}, Lcom/oplus/camera/algovisualization/a;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 133
    aget-object v8, v1, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v6, -0x1

    .line 134
    aget-object v9, v1, v9

    .line 135
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 134
    invoke-static {v8, v9}, Lcom/oplus/camera/algovisualization/a;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    :cond_7
    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    .line 116
    aget-object v8, v2, v6

    invoke-static {v3, v8}, Lcom/oplus/camera/algovisualization/a;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 118
    new-instance v8, Landroid/text/SpannableString;

    aget-object v9, v1, v6

    .line 119
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const-string v14, "#ffffff"

    .line 121
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v9, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 124
    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v14

    .line 123
    invoke-virtual {v8, v9, v5, v14, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 125
    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 126
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_5
    move/from16 v9, p4

    goto :goto_7

    :cond_8
    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    .line 95
    aget-object v8, v2, v6

    invoke-static {v3, v8}, Lcom/oplus/camera/algovisualization/a;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v8, 0x2a

    move/from16 v9, p4

    if-lt v9, v8, :cond_9

    .line 99
    new-instance v8, Landroid/text/SpannableString;

    .line 100
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    const-string v15, "#ff0000"

    .line 102
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-direct {v14, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 104
    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v15

    .line 103
    invoke-virtual {v8, v14, v5, v15, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 105
    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    .line 107
    :cond_9
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 110
    :goto_6
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 111
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_7

    :cond_a
    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move/from16 v9, p4

    move-object/from16 v13, p5

    .line 84
    aget-object v8, v2, v6

    invoke-static {v3, v8}, Lcom/oplus/camera/algovisualization/a;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 86
    aget-object v8, v1, v6

    if-eqz v8, :cond_b

    .line 87
    aget-object v8, v1, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/oplus/camera/algovisualization/g;->a(I)V

    .line 88
    aget-object v8, v1, v6

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 89
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_b
    :goto_7
    move-object/from16 v10, p6

    goto :goto_8

    :cond_c
    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move/from16 v9, p4

    move-object/from16 v13, p5

    .line 77
    aget-object v8, v2, v6

    invoke-static {v3, v8}, Lcom/oplus/camera/algovisualization/a;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    move-object/from16 v10, p6

    .line 78
    invoke-virtual {v4, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 79
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_8

    :cond_d
    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move/from16 v9, p4

    move-object/from16 v13, p5

    move-object/from16 v10, p6

    .line 64
    aget-object v14, v2, v6

    invoke-static {v3, v14}, Lcom/oplus/camera/algovisualization/a;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 66
    aget-object v14, v1, v6

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 67
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 68
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 71
    :cond_e
    aget-object v8, v1, v6

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 72
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 205
    :cond_f
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-object v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/text/SpannableStringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "\n"

    .line 244
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p1, ": "

    .line 38
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p1, "\n"

    .line 39
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public static a(Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V
    .locals 6

    const-string v0, ","

    .line 215
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 218
    :goto_0
    array-length v4, p0

    const-string v5, "\n"

    if-ge v2, v4, :cond_2

    .line 219
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 221
    rem-int/2addr v4, p1

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 223
    aget-object v4, p0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 229
    :cond_0
    aget-object v4, p0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 232
    :cond_1
    aget-object v4, p0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 237
    invoke-virtual {p3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 239
    invoke-static {p2, v3}, Lcom/oplus/camera/algovisualization/a;->a(Landroid/text/SpannableStringBuilder;I)V

    return-void
.end method
