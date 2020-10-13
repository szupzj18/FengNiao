# 取出输出的内容并且保存为数组
# 保存冗余图片文件
lines=$(fengniao)
# array=(${lines// /\r})
for line in ${lines[@]}
do
    echo $line
    author=$(git log -p $line | grep Author)
    echo ${author[0]}
done