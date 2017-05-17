if [ ! -d ~/.vagrant-installation/languagetool/ ]
then
    echo Installing languagetool...
    cd ~/.vagrant-installation/
    git clone --depth 5 https://github.com/languagetool-org/languagetool.git
    cd ~/.vagrant-installation/languagetool
    # mvn clean test
    ./build.sh languagetool-standalone package -DskipTests

    ln -s /home/vagrant/.vagrant-installation/languagetool/languagetool-standalone/target/LanguageTool-3.8-SNAPSHOT/LanguageTool-3.8-SNAPSHOT/ /home/vagrant/.vagrant-installation/LanguageTool

fi
