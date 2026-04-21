#!/bin/bash
# GitHub 업로드 스크립트
# 이 파일을 더블클릭하면 자동으로 GitHub에 업로드됩니다

cd "$(dirname "$0")"

echo "📁 현재 폴더: $(pwd)"
echo ""

# git 초기화 상태 확인 및 수정
if [ ! -f ".git/objects" ]; then
    echo "🔧 git 초기화 중..."
    rm -rf .git
    git init
    git branch -m main
fi

# remote 설정
git remote remove origin 2>/dev/null
git remote add origin https://github.com/collette1009/portfolio-socar.git

# 파일 추가
echo "📦 파일 추가 중..."
git add index.html case1.html case2.html case3.html case4.html img/

# commit
echo "💾 커밋 중..."
git -c user.email="heeeun@choroc.com" -c user.name="collette1009" commit -m "Add portfolio socar files"

# push
echo "🚀 GitHub에 업로드 중... (GitHub 로그인 팝업이 뜨면 로그인해주세요)"
git push -u origin main

echo ""
echo "✅ 완료! https://github.com/collette1009/portfolio-socar 에서 확인하세요"
echo ""
read -p "아무 키나 눌러서 종료..."
