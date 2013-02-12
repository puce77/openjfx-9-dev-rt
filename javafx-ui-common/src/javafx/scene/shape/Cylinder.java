/*
 * Copyright (c) 2013, Oracle and/or its affiliates. All rights reserved.
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
package javafx.scene.shape;

import com.sun.javafx.geom.BaseBounds;
import com.sun.javafx.geom.PickRay;
import com.sun.javafx.geom.Vec3d;
import com.sun.javafx.geom.transform.BaseTransform;
import com.sun.javafx.scene.DirtyBits;
import com.sun.javafx.scene.input.PickResultChooser;
import com.sun.javafx.sg.PGCylinder;
import com.sun.javafx.sg.PGNode;
import com.sun.javafx.tk.Toolkit;
import javafx.beans.property.DoubleProperty;
import javafx.beans.property.SimpleDoubleProperty;
import javafx.geometry.Point2D;
import javafx.geometry.Point3D;
import javafx.scene.input.PickResult;
import javafx.scene.transform.Rotate;

/**
 * The {@code Cylinder} class defines a 3 dimensional cylinder with the specified size.
 * A {@code Cylinder} is a 3D geometry primitive created with a given radius and height.
 * It is centered at the origin.
 *
 * @since JavaFX 8    
 */
public class Cylinder extends Shape3D {

    static final int DEFAULT_DIVISIONS = 64;
    static final double DEFAULT_RADIUS = 1;
    static final double DEFAULT_HEIGHT = 2;
    
    private int divisions = DEFAULT_DIVISIONS;
    private TriangleMesh mesh;
    
    /**  
     * Creates a new instance of {@code Cylinder} of radius of 1.0 and height of 2.0.
     * Resolution defaults to 15 divisions along X and Z axis.
     */
    public Cylinder() {
        this(DEFAULT_RADIUS, DEFAULT_HEIGHT, DEFAULT_DIVISIONS);
    }

    /**
     * Creates a new instance of {@code Cylinder} of a given radius and height.
     * Resolution defaults to 15 divisions along X and Z axis.
     * 
     * @param radius Radius
     * @param height Height
     */
    public Cylinder (double radius, double height) {
        this(radius, height, DEFAULT_DIVISIONS);
    }

    /**
     * Creates a new instance of {@code Cylinder} of a given radius, height, and
     * divisions. Resolution defaults to 15 divisions along X and Z axis.
     *
     * Note that divisions should be at least 1. Any value less than that will be
     * clamped to 1.
     * 
     * @param radius Radius
     * @param height Height
     * @param divisions Divisions 
     */
    public Cylinder (double radius, double height, int divisions) {
        this.divisions = divisions < 1 ? 1 : divisions;
        setRadius(radius);
        setHeight(height);
    }
    
    /**
     * Defines the height or the Y dimension of the Cylinder.
     *
     * @defaultValue 2.0
     */
    private DoubleProperty height;

    public final void setHeight(double value) {
        heightProperty().set(value);
    }

    public final double getHeight() {
        return height == null ? 2 : height.get();
    }

    public final DoubleProperty heightProperty() {
        if (height == null) {
            height = new SimpleDoubleProperty(Cylinder.this, "height", DEFAULT_HEIGHT) {
                @Override
                public void invalidated() {
                    impl_markDirty(DirtyBits.MESH_GEOM);
                    manager.invalidateCylinderMesh(key);
                    key = 0;
                }
            };
        }
        return height;
    }

    /**
     * Defines the radius in the Z plane of the Cylinder.
     *
     * @defaultValue 1.0
     */
    private DoubleProperty radius;

    public final void setRadius(double value) {
        radiusProperty().set(value);
    }

    public final double getRadius() {
        return radius == null ? 1 : radius.get();
    }

    public final DoubleProperty radiusProperty() {
        if (radius == null) {
            radius = new SimpleDoubleProperty(Cylinder.this, "radius", DEFAULT_RADIUS) {
                @Override
                public void invalidated() {
                    impl_markDirty(DirtyBits.MESH_GEOM);
                    manager.invalidateCylinderMesh(key);
                    key = 0;
                }
            };
        }
        return radius;
    }

    /**
     * Retrieves the divisions attribute use to generate this cylinder.
     *
     * @return the divisions attribute.
     */
    public int getDivisions() {
        return divisions;
    }

    /**
     * @treatAsPrivate implementation detail
     * @deprecated This is an internal API that is not intended for use and will be removed in the next version
     */
    @Deprecated   
    @Override
    public void impl_updatePG() {
        super.impl_updatePG();
        if (impl_isDirty(DirtyBits.MESH_GEOM)) {
            PGCylinder pgCylinder = (PGCylinder) impl_getPGNode();
            if (key == 0) {
                key = generateKey((float) getHeight(), 
                                  (float) getRadius(),
                                  divisions);
            }
            mesh = manager.getCylinderMesh((float) getHeight(), (float) getRadius(), divisions, key);
            mesh.impl_updatePG();
            pgCylinder.updateMesh(mesh.impl_getPGTriangleMesh());
        }
    }
    
    /**
     * @treatAsPrivate implementation detail
     * @deprecated This is an internal API that is not intended for use and will be removed in the next version
     */
    @Deprecated
    @Override
    protected PGNode impl_createPGNode() {
        return Toolkit.getToolkit().createPGCylinder();
    }

    /**
     * @treatAsPrivate implementation detail
     * @deprecated This is an internal API that is not intended for use and will be removed in the next version
     */
    @Deprecated
    @Override
    public BaseBounds impl_computeGeomBounds(BaseBounds bounds, BaseTransform tx) {
        float r = (float) getRadius();
        float hh = (float) getHeight() * 0.5f;
        
        bounds = bounds.deriveWithNewBounds(-r, -hh, -r, r, hh, r);
        bounds = tx.transform(bounds, bounds);
        return bounds;
    }

    /**
     * @treatAsPrivate implementation detail
     * @deprecated This is an internal API that is not intended for use and will be removed in the next version
     */
    @Deprecated
    @Override
    protected boolean impl_computeContains(double localX, double localY) {
        double w = getRadius();
        double hh = getHeight()*.5f;
        return -w <= localX && localX <= w && 
                -hh <= localY && localY <= hh;
    }

    /**
     * @treatAsPrivate implementation detail
     * @deprecated This is an internal API that is not intended for use and will be removed in the next version
     */
    @Deprecated
    @Override
    protected boolean impl_computeIntersects(PickRay pickRay, PickResultChooser pickResult) {

        final boolean exactPicking = divisions < DEFAULT_DIVISIONS && mesh != null;

        final double r = getRadius();
        final Vec3d dir = pickRay.getDirectionNoClone();
        final double dirX = dir.x;
        final double dirY = dir.y;
        final double dirZ = dir.z;
        final Vec3d origin = pickRay.getOriginNoClone();
        final double originX = origin.x;
        final double originY = origin.y;
        final double originZ = origin.z;
        final double h = getHeight();
        final double halfHeight = h / 2.0;
        final CullFace cullFace = getCullFace();

        // Check the open cylinder first

        // Coeficients of a quadratic equation desribing intersection with an infinite cylinder
        final double a = dirX * dirX + dirZ * dirZ;
        final double b = 2 * (dirX * originX + dirZ * originZ);
        final double c = originX * originX + originZ * originZ - r * r;

        final double discriminant = b * b - 4 * a * c;

        double t0, t1, t = Double.POSITIVE_INFINITY;

        if (discriminant >= 0 && (dirX != 0.0 || dirZ != 0.0)) {
            // the line hits the infinite cylinder

            final double distSqrt = Math.sqrt(discriminant);
            final double q = (b < 0) ? (-b - distSqrt) / 2.0 : (-b + distSqrt) / 2.0;

            t0 = q / a;
            t1 = c / q;

            if (t0 > t1) {
                double temp = t0;
                t0 = t1;
                t1 = temp;
            }

            // let's see if the hit is in front of us and withing the cylinder's height
            final double y0 = originY + t0 * dirY;
            if (t0 < 0 || y0 < -halfHeight || y0 > halfHeight || cullFace == CullFace.FRONT) {
                final double y1 = originY + t1 * dirY;
                if (t1 >= 0 && y1 >= -halfHeight && y1 <= halfHeight) {
                    if (cullFace != CullFace.BACK || exactPicking) {
                        // t0 is outside or behind but t1 hits.

                        // We need to do the exact picking even if the back wall
                        // is culled because the front facing triangles may
                        // still be in front of us
                        t = t1;
                    }
                } // else no hit (but we need to check the caps)
            } else {
                // t0 hits the height in front of us
                t = t0;
            }
        }

        // Now check the caps
        
        // if we already know we are going to do the exact picking,
        // there is no need to check the caps
        
        boolean cap = false;
        if (t == Double.POSITIVE_INFINITY || !exactPicking) {
            final double tBottom = (-halfHeight - originY) / dirY;
            final double tTop = (halfHeight - originY) / dirY;

            if (tBottom < tTop) {
                t0 = tBottom;
                t1 = tTop;
            } else {
                t0 = tTop;
                t1 = tBottom;
            }

            if (t0 > 0 && t0 < t && cullFace != CullFace.FRONT) {
                final double tX = originX + dirX * t0;
                final double tZ = originZ + dirZ * t0;
                if (tX * tX + tZ * tZ <= r * r) {
                    cap = true;
                    t = t0;
                }
            }

            if (t1 > 0 && t1 < t && (cullFace != CullFace.BACK || exactPicking)) {
                final double tX = originX + dirX * t1;
                final double tZ = originZ + dirZ * t1;
                if (tX * tX + tZ * tZ <= r * r) {
                    cap = true;
                    t = t1;
                }
            }
        }

        if (t == Double.POSITIVE_INFINITY) {
            // no hit
            return false;
        }

        if (exactPicking) {
            return mesh.impl_computeIntersects(pickRay, pickResult, this, cullFace, false);
        }

        if (pickResult.isCloser(t)) {
            final Point3D point = PickResultChooser.computePoint(pickRay, t);

            Point2D txCoords;
            if (cap) {
                txCoords = new Point2D(
                        0.5 + point.getX() / (2 * r),
                        0.5 + point.getZ() / (2 * r));
            } else {
                final Point3D proj = new Point3D(point.getX(), 0, point.getZ());
                final Point3D cross = proj.crossProduct(Rotate.Z_AXIS);
                double angle = proj.angle(Rotate.Z_AXIS);
                if (cross.getY() > 0) {
                    angle = 360 - angle;
                }
                txCoords = new Point2D(angle / 360, 0.5 - point.getY() / h);
            }

            pickResult.offer(this, t, PickResult.FACE_UNDEFINED, point, txCoords);
        }
        return true;
    }

    static TriangleMesh createMesh(int div, float h, float r) {

        if (h * r == 0 || div < 3) {
            return null;
        }

        final int nPonits = (div + 1) * 2 + 2;
        final int tcCount = (div + 1) * 3 + 1;
        final int faceCount = div * 4;

        float textureDelta = 1.f / 256;

        float dA = 1.f / div;
        h *= .5f;

        float points[] = new float[nPonits * 3];
        float tPoints[] = new float[tcCount * 2];
        int faces[] = new int[faceCount * 6];
        int smoothing[] = new int[faceCount];

        int pPos = 0, tPos = 0;

        for (int i = 0; i <= div; ++i) {
            double a = (i < div) ? dA * i * 2 * Math.PI : 0;

            points[pPos + 0] = (float) (Math.sin(a) * r);
            points[pPos + 2] = (float) (Math.cos(a) * r);
            points[pPos + 1] = h;
            tPoints[tPos + 0] = dA * i;
            tPoints[tPos + 1] = textureDelta;
            pPos += 3; tPos += 2;
        }

        for (int i = 0; i <= div; ++i) {
            double a = (i < div) ? dA * i * 2 * Math.PI : 0;
            points[pPos + 0] = (float) (Math.sin(a) * r);
            points[pPos + 2] = (float) (Math.cos(a) * r);
            points[pPos + 1] = -h;
            tPoints[tPos + 0] = dA * i;
            tPoints[tPos + 1] = 1 - textureDelta;
            pPos += 3; tPos += 2;
        }

        // add cap central points
        points[pPos + 0] = 0;
        points[pPos + 1] = h;
        points[pPos + 2] = 0;
        points[pPos + 3] = 0;
        points[pPos + 4] = -h;
        points[pPos + 5] = 0;
        pPos += 6;

        // add cap central points
        for (int i = 0; i <= div; ++i) {
            double a = (i < div) ? dA * i * 2 * Math.PI : 0;
            tPoints[tPos + 0] = (float) (Math.sin(a) * 0.5f) + 0.5f;
            tPoints[tPos + 1] = (float) (Math.cos(a) * 0.5f) + 0.5f;
            tPos += 2;
        }

        tPoints[tPos + 0] = .5f;
        tPoints[tPos + 1] = .5f;
        tPos += 2;

        int fIndex = 0;

        // build body faces
        for (int p0 = 0; p0 != div; ++p0) {
            int p1 = p0 + 1;
            int p2 = p0 + div + 1;
            int p3 = p1 + div + 1;

            // add p0, p1, p2
            faces[fIndex+0] = p0;
            faces[fIndex+1] = p0;
            faces[fIndex+2] = p2;
            faces[fIndex+3] = p2;
            faces[fIndex+4] = p1;
            faces[fIndex+5] = p1;
            fIndex += 6;

            // add p3, p2, p1
            // *faces++ = SmFace(p3,p1,p2, p3,p1,p2, 1);
            faces[fIndex+0] = p3;
            faces[fIndex+1] = p3;
            faces[fIndex+2] = p1;
            faces[fIndex+3] = p1;
            faces[fIndex+4] = p2;
            faces[fIndex+5] = p2;
            fIndex += 6;

        }
        // build cap faces
        int tStart = (div + 1) * 2, t1 = (div + 1) * 3, p1 = (div + 1) * 2;

        for (int p0 = 0; p0 != div; ++p0) {
            int p2 = p0 + 1, t0 = tStart + p0, t2 = t0 + 1;
            // add p0, p1, p2

            faces[fIndex+0] = p0;
            faces[fIndex+1] = t0;
            faces[fIndex+2] = p2;
            faces[fIndex+3] = t2;
            faces[fIndex+4] = p1;
            faces[fIndex+5] = t1;
            fIndex += 6;
        }

        p1 = (div + 1) * 2 + 1;

        for (int p0 = 0; p0 != div; ++p0) {
            int p2 = p0 + 1 + div + 1, t0 = tStart + p0, t2 = t0 + 1;
            //*faces++ = SmFace(p0+div+1,p1,p2, t0,t1,t2, 2);

            faces[fIndex+0] = p0 + div + 1;
            faces[fIndex+1] = t0;
            faces[fIndex+2] = p1;
            faces[fIndex+3] = t1;
            faces[fIndex+4] = p2;
            faces[fIndex+5] = t2;
            fIndex += 6;
        }

        for (int i = 0; i < div * 2; ++i) {
            smoothing[i] = 1;
        }
        for (int i = div * 2; i < div * 4; ++i) {
            smoothing[i] = 2;
        }

        TriangleMesh m = new TriangleMesh(points, tPoints, faces);
        m.setFaceSmoothingGroups(smoothing);

        return m;
    }

    private static int generateKey(float h, float r, int div) {
        int hash = 7;
        hash = 47 * hash + Float.floatToIntBits(h);
        hash = 47 * hash + Float.floatToIntBits(r);
        hash = 47 * hash + div;
        return hash;
    }
}