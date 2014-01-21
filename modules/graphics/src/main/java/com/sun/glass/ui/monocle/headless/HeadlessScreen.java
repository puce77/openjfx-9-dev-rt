/*
 * Copyright (c) 2010, 2013, Oracle and/or its affiliates. All rights reserved.
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * This code is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 only, as
 * published by the Free Software Foundation.  Oracle designates this
 * particular file as subject to the "Classpath" exception as provided
 * by Oracle in the LICENSE file that accompanied this code.
 *
 * This code is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * version 2 for more details (a copy is included in the LICENSE file that
 * accompanied this code).
 *
 * You should have received a copy of the GNU General Public License version
 * 2 along with this work; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
 * or visit www.oracle.com if you need additional information or have any
 * questions.
 */

package com.sun.glass.ui.monocle.headless;

import com.sun.glass.ui.Pixels;
import com.sun.glass.ui.monocle.Framebuffer;
import com.sun.glass.ui.monocle.NativeScreen;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.security.AccessController;
import java.security.PrivilegedAction;

public class HeadlessScreen implements NativeScreen {

    private int depth = 32;
    private int width = 1280;
    private int height = 800;
    private Framebuffer fb;

    public HeadlessScreen() {
        String geometry = AccessController.doPrivileged(new PrivilegedAction<String>() {
            @Override
            public String run() {
                return System.getProperty("headless.geometry");
            }
        });
        if (geometry != null && geometry.indexOf('x') > 0) {
            try {
                int i = geometry.indexOf("x");
                width = Integer.parseInt(geometry.substring(0, i));
                int j = geometry.indexOf("-", i + 1);
                if (j > 0) {
                    depth = Integer.parseInt(geometry.substring(j + 1));
                } else {
                    j = geometry.length();
                }
                height = Integer.parseInt(geometry.substring(i + 1, j));
            } catch (NumberFormatException e) {
                System.err.println("Cannot parse geometry string: '"
                        + geometry + "'");
            }
        }
        ByteBuffer bb = ByteBuffer.allocate(width * height * (depth >>> 3));
        bb.order(ByteOrder.nativeOrder());
        fb = new Framebuffer(bb, width, height, depth, true);
    }

    @Override
    public int getDepth() {
        return depth;
    }

    @Override
    public int getNativeFormat() {
        return Pixels.Format.BYTE_BGRA_PRE;
    }

    @Override
    public int getWidth() {
        return width;
    }

    @Override
    public int getHeight() {
        return height;
    }

    @Override
    public long getNativeHandle() {
        return 1l;
    }

    @Override
    public int getDPI() {
        return 96;
    }

    @Override
    public void shutdown() {
    }

    @Override
    public void uploadPixels(Buffer b,
                             int x, int y, int width, int height,
                             float alpha) {
        fb.composePixels(b, x, y, width, height, alpha);
    }

    @Override
    public void swapBuffers() {
        fb.reset();
    }

    @Override
    public IntBuffer getScreenCapture() {
        return fb.getBuffer().asIntBuffer();
    }

}
