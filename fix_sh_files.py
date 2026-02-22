import os

def fix_file(filepath):
    try:
        with open(filepath, 'rb') as f:
            content = f.read()
        
        # 转换为 LF 换行符
        content = content.replace(b'\r\n', b'\n').replace(b'\r', b'\n')
        
        with open(filepath, 'wb') as f:
            f.write(content)
        print(f"已修复: {filepath}")
    except Exception as e:
        print(f"修复失败 {filepath}: {e}")

def main():
    print("正在修复 Shell 脚本文件的换行符...")
    
    # 只修复 .sh 文件
    sh_files = [
        "build.sh",
        "mybv/java/build.sh"
    ]
    
    for f in sh_files:
        if os.path.exists(f):
            fix_file(f)
        else:
            print(f"文件不存在: {f}")
    
    print("\n完成！只修改了 Shell 脚本文件，其他文件未受影响！")

if __name__ == "__main__":
    main()
