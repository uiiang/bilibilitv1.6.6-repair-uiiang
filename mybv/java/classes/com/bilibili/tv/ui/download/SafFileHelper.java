package com.bilibili.tv.ui.download;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.util.Log;

/**
 * SAF（Storage Access Framework）辅助工具类
 * 用于访问外接U盘/移动硬盘（Android 8.0+ 无法通过文件路径写入外部卷，必须走SAF授权）
 * 使用原生 DocumentsContract API 实现（项目不含 support-v4 的 DocumentFile 类）
 *
 * URI形态说明（兼容两种）：
 *   1. tree URI：content://.../tree/XXXX-XXXX%3Apath （授权根，来自 ACTION_OPEN_DOCUMENT_TREE）
 *   2. document URI：content://.../document/XXXX-XXXX%3Apath... （具体文件/目录）
 *      （可能带 tree 前缀：content://.../tree/XXXX-XXXX%3Apath/document/XXXX-XXXX%3Apath%2Fsub）
 * getDocId() 对两种形态都能正确提取文档ID。
 */
public class SafFileHelper {
    private static final String TAG = "SafFileHelper";

    /**
     * 提取URI的文档ID（兼容 tree URI 和 document URI 两种形态）
     */
    private static String getDocId(Uri uri) {
        if (uri == null) {
            return null;
        }
        java.util.List<String> paths = uri.getPathSegments();
        if (paths.size() >= 4 && "tree".equals(paths.get(0)) && "document".equals(paths.get(2))) {
            // tree前缀的document URI：tree/根id/document/真实id
            return paths.get(3);
        }
        if (paths.size() >= 2 && "tree".equals(paths.get(0))) {
            // tree URI：tree/根id
            return paths.get(1);
        }
        if (paths.size() >= 2 && "document".equals(paths.get(0))) {
            // 普通document URI：document/id
            return paths.get(1);
        }
        return null;
    }

    /**
     * 构建父目录的子项列表URI（父目录可以是 tree URI 或 document URI）
     */
    private static Uri buildChildrenUri(Uri treeUri, Uri parentUri) {
        String parentDocId = getDocId(parentUri);
        if (parentDocId == null) {
            parentDocId = DocumentsContract.getTreeDocumentId(treeUri);
        }
        return DocumentsContract.buildChildDocumentsUriUsingTree(treeUri, parentDocId);
    }

    /**
     * 检查SAF授权目录是否有效可访问
     */
    public static boolean isDirectoryAvailable(Context context, String treeUri) {
        try {
            Uri uri = Uri.parse(treeUri);
            ContentResolver resolver = context.getContentResolver();
            Uri docUri = DocumentsContract.buildDocumentUriUsingTree(uri,
                    DocumentsContract.getTreeDocumentId(uri));
            Cursor cursor = resolver.query(docUri,
                    new String[]{DocumentsContract.Document.COLUMN_DOCUMENT_ID}, null, null, null);
            if (cursor != null) {
                boolean ok = cursor.moveToFirst();
                cursor.close();
                return ok;
            }
            return false;
        } catch (Exception e) {
            Log.w(TAG, "检查目录失败: " + e.getMessage());
            return false;
        }
    }

    /**
     * 获取目录显示名
     */
    public static String getDisplayName(Context context, String treeUri) {
        try {
            Uri uri = Uri.parse(treeUri);
            Uri docUri = DocumentsContract.buildDocumentUriUsingTree(uri,
                    DocumentsContract.getTreeDocumentId(uri));
            Cursor cursor = context.getContentResolver().query(docUri,
                    new String[]{DocumentsContract.Document.COLUMN_DISPLAY_NAME}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        return cursor.getString(cursor.getColumnIndex(DocumentsContract.Document.COLUMN_DISPLAY_NAME));
                    }
                } finally {
                    cursor.close();
                }
            }
        } catch (Exception e) {
            Log.w(TAG, "获取显示名失败: " + e.getMessage());
        }
        return null;
    }

    /**
     * 在目录下查找同名子项（目录或文件），返回document URI，不存在返回null
     */
    private static Uri findChild(Context context, Uri treeUri, Uri parentUri, String name, boolean isDir) {
        try {
            ContentResolver resolver = context.getContentResolver();
            Cursor cursor = resolver.query(buildChildrenUri(treeUri, parentUri),
                    new String[]{DocumentsContract.Document.COLUMN_DOCUMENT_ID,
                            DocumentsContract.Document.COLUMN_DISPLAY_NAME,
                            DocumentsContract.Document.COLUMN_MIME_TYPE},
                    null, null, null);
            if (cursor != null) {
                try {
                    while (cursor.moveToNext()) {
                        String displayName = cursor.getString(
                                cursor.getColumnIndex(DocumentsContract.Document.COLUMN_DISPLAY_NAME));
                        String mimeType = cursor.getString(
                                cursor.getColumnIndex(DocumentsContract.Document.COLUMN_MIME_TYPE));
                        boolean childIsDir = DocumentsContract.Document.MIME_TYPE_DIR.equals(mimeType);
                        if (name.equals(displayName) && childIsDir == isDir) {
                            String docId = cursor.getString(
                                    cursor.getColumnIndex(DocumentsContract.Document.COLUMN_DOCUMENT_ID));
                            return DocumentsContract.buildDocumentUriUsingTree(treeUri, docId);
                        }
                    }
                } finally {
                    cursor.close();
                }
            }
        } catch (Exception e) {
            Log.w(TAG, "查找子项失败: " + name + ", " + e.getMessage());
        }
        return null;
    }

    /**
     * 在授权目录下创建子目录（已存在则直接返回），返回document URI，失败返回null
     */
    public static Uri findOrCreateDirectory(Context context, String treeUri, String name) {
        try {
            Uri tree = Uri.parse(treeUri);
            ContentResolver resolver = context.getContentResolver();
            Uri found = findChild(context, tree, tree, name, true);
            if (found != null) {
                return found;
            }
            // 注意：createDocument的父目录不能用裸tree URI（框架getDocumentId会抛
            // IllegalArgumentException: Invalid URI），必须转为tree前缀的document URI
            Uri rootDocUri = DocumentsContract.buildDocumentUriUsingTree(tree,
                    DocumentsContract.getTreeDocumentId(tree));
            return DocumentsContract.createDocument(resolver, rootDocUri,
                    DocumentsContract.Document.MIME_TYPE_DIR, name);
        } catch (Exception e) {
            Log.w(TAG, "创建目录失败: " + name + ", " + e.getMessage());
            return null;
        }
    }

    /**
     * 在目录下创建文件（已存在则直接返回），返回document URI，失败返回null
     *
     * @param treeUri      授权根tree URI（用于构建子项查询）
     * @param parentDirUri 父目录document URI（findOrCreateDirectory的返回值）
     */
    public static Uri findOrCreateFile(Context context, String treeUri, String parentDirUri, String name, String mimeType) {
        try {
            Uri tree = Uri.parse(treeUri);
            Uri parentUri = Uri.parse(parentDirUri);
            ContentResolver resolver = context.getContentResolver();
            Uri found = findChild(context, tree, parentUri, name, false);
            if (found != null) {
                return found;
            }
            return DocumentsContract.createDocument(resolver, parentUri, mimeType, name);
        } catch (Exception e) {
            Log.w(TAG, "创建文件失败: " + name + ", " + e.getMessage());
            return null;
        }
    }

    /**
     * 获取文件大小（文件不存在返回-1）
     */
    public static long getFileSize(Context context, String fileUri) {
        try {
            Uri uri = Uri.parse(fileUri);
            ContentResolver resolver = context.getContentResolver();
            android.content.res.AssetFileDescriptor afd = resolver.openAssetFileDescriptor(uri, "r");
            if (afd != null) {
                long size = afd.getLength();
                afd.close();
                return size;
            }
            return -1;
        } catch (Exception e) {
            Log.w(TAG, "获取文件大小失败: " + e.getMessage());
            return -1;
        }
    }

    /**
     * 检查文件是否存在
     */
    public static boolean exists(Context context, String fileUri) {
        return getFileSize(context, fileUri) >= 0;
    }

    /**
     * 从下载路径中提取文件名（兼容SAF content URI和普通文件路径）
     * SAF的downloadPath是content:// URI，中文文件名会被URL编码（如 %E6%88%91），
     * 需对URI路径段解码后取最后一段；File模式路径中的中文是原始字符。
     */
    public static String getFileNameFromPath(Context context, String path) {
        if (path == null || path.isEmpty()) {
            return "";
        }
        if (path.startsWith("content://")) {
            try {
                String encodedPath = android.net.Uri.parse(path).getEncodedPath();
                if (encodedPath != null) {
                    int idx = encodedPath.lastIndexOf('/');
                    String segment = idx >= 0 ? encodedPath.substring(idx + 1) : encodedPath;
                    String decoded = android.net.Uri.decode(segment);
                    if (decoded != null) {
                        // 解码后文档ID形如：卷ID:目录/文件名
                        int lastSlash = decoded.lastIndexOf('/');
                        if (lastSlash >= 0) {
                            decoded = decoded.substring(lastSlash + 1);
                        } else if (decoded.indexOf(':') >= 0) {
                            // 根目录文件文档ID形如：卷ID:文件名（无目录分隔），切掉卷前缀
                            decoded = decoded.substring(decoded.indexOf(':') + 1);
                        }
                        if (!decoded.isEmpty()) {
                            return decoded;
                        }
                    }
                }
            } catch (Exception e) {
                Log.w(TAG, "解析SAF文件名失败: " + e.getMessage());
            }
            // 兜底：直接查询provider的DISPLAY_NAME
            String displayName = queryDisplayName(context, path);
            return displayName != null ? displayName : path;
        }
        // 普通文件路径
        int idx = path.lastIndexOf('/');
        return idx >= 0 ? path.substring(idx + 1) : path;
    }

    /**
     * 查询文档的显示名称（COLUMN_DISPLAY_NAME）
     */
    private static String queryDisplayName(Context context, String fileUri) {
        try {
            Uri uri = Uri.parse(fileUri);
            Cursor cursor = context.getContentResolver().query(uri,
                    new String[]{DocumentsContract.Document.COLUMN_DISPLAY_NAME}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        int col = cursor.getColumnIndex(DocumentsContract.Document.COLUMN_DISPLAY_NAME);
                        if (col >= 0) {
                            return cursor.getString(col);
                        }
                    }
                } finally {
                    cursor.close();
                }
            }
        } catch (Exception e) {
            Log.w(TAG, "查询文件名失败: " + e.getMessage());
        }
        return null;
    }

    /**
     * 删除文件
     */
    public static boolean delete(Context context, String fileUri) {
        try {
            return DocumentsContract.deleteDocument(context.getContentResolver(), Uri.parse(fileUri));
        } catch (Exception e) {
            Log.w(TAG, "删除文件失败: " + e.getMessage());
            return false;
        }
    }

    /**
     * 重命名文件，返回新URI字符串（失败返回null）
     */
    public static String rename(Context context, String fileUri, String newName) {
        try {
            Uri newUri = DocumentsContract.renameDocument(context.getContentResolver(),
                    Uri.parse(fileUri), newName);
            return newUri != null ? newUri.toString() : null;
        } catch (Exception e) {
            Log.w(TAG, "重命名失败: " + e.getMessage());
            return null;
        }
    }
}
