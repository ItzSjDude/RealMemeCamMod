package com.oplus.oms.split.splitsupport;

import android.content.Context;
import java.io.FileNotFoundException;
import java.io.InputStream;

public interface OmsJsonProvider {
    InputStream getOmsJsonFileStream(Context context) throws FileNotFoundException;
}
