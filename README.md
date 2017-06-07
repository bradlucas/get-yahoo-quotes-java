# get-yahoo-quotes-java

A Java class to download Yahoo quotes which works with the new cookie authorized page.

## Setup

This project requires Apache Commons HttpClient library and the Commons Lang library.

You can download the latest HttpClient from the following link.

[https://hc.apache.org/downloads.cgi](https://hc.apache.org/downloads.cgi)

At the time of this writing the latest was at [http://download.nextag.com/apache//httpcomponents/httpclient/binary/httpcomponents-client-4.5.3-bin.tar.gz](4.5.3.tar.gz).

Unpack this file in a convenient location and note the path to the lib directory. This will contain the jar files you'll need.

The Commons Lang library can be gathered over at [https://commons.apache.org/proper/commons-lang/](https://commons.apache.org/proper/commons-lang/). At the time of this writing version 3.5 was available at [http://apache.cs.utah.edu//commons/lang/binaries/commons-lang3-3.5-bin.tar.gz](http://apache.cs.utah.edu//commons/lang/binaries/commons-lang3-3.5-bin.tar.gz).


Unpack this and save the location to the `commons-lang3-3.5.jar` file.

### Classpath

For the sake of discussion create a lib directory under the directory of this file and the java file. Then move the commons lang jar and the collection of HttpClient jars from the lib directory in the HttpClient directory to this lib directory.

Here this new lib directory looks like the following.

```
`-- Lib
    |-- commons-codec-1.9.jar
    |-- commons-lang3-3.5.jar
    |-- commons-logging-1.2.jar
    |-- fluent-hc-4.5.3.jar
    |-- httpclient-4.5.3.jar
    |-- httpclient-cache-4.5.3.jar
    |-- httpclient-win-4.5.3.jar
    |-- httpcore-4.4.6.jar
    |-- httpmime-4.5.3.jar
    |-- jna-4.1.0.jar
    `-- jna-platform-4.1.0.jar
```

Now set your `CLASSPATH` to know where the jar files are.

```
export CLASSPATH=./lib/*:.
```

### Building

To build the project.

```
javac -classpath $CLASSPATH GetYahooQuotes.java
```

## Usage


```
java -classpath $CLASSPATH GetYahooQuotes SYMBOL
```

For example, try the following for Google.

```
java -classpath $CLASSPATH GetYahooQuotes goog
```

