# get-yahoo-quotes-java

A Java class to download Yahoo quotes which works with the new cookie authorized page.

This repo has an associated blog post available here:

[http://blog.bradlucas.com/posts/2017-06-04-yahoo-finance-quote-download-java/](http://blog.bradlucas.com/posts/2017-06-04-yahoo-finance-quote-download-java/)

An update to the post is here:

[https://blog.bradlucas.com/posts/2020-04-07-yahoo-finance-quote-download-java-update/](https://blog.bradlucas.com/posts/2020-04-07-yahoo-finance-quote-download-java-update/)

## Setup

This project requires Apache Commons HttpClient library and the Commons Lang library.

### HttpClient 
You can download the latest HttpClient from the following link.

[https://hc.apache.org/downloads.cgi](https://hc.apache.org/downloads.cgi)

Choose version 4.5.13

[https://mirror.jframeworks.com/apache//httpcomponents/httpclient/binary/httpcomponents-client-4.5.13-bin.tar.gz](https://mirror.jframeworks.com/apache//httpcomponents/httpclient/binary/httpcomponents-client-4.5.13-bin.tar.gz)

Unpack this file in a convenient location and note the path to the lib directory. This will contain the jar files you'll need.

### Commons Lang

The Commons Lang library can be gathered over at [https://commons.apache.org/proper/commons-lang/](https://commons.apache.org/proper/commons-lang/). 

Choose the latest (as of this write) of version 3.11 at [https://commons.apache.org/lang/download_lang.cgi](https://commons.apache.org/lang/download_lang.cgi).

Unpack this and save the location to the `commons-lang3-3.11.jar` file.

### Lib directory

For the sake of discussion create a `lib` directory under the directory of this file and the java file. Then move the commons lang jar and the collection of HttpClient jars from the lib directory in the HttpClient directory to this lib directory.

Here this new `lib` directory should like when done.

```
-- lib/
   ├── commons-codec-1.11.jar
   ├── commons-lang3-3.11.jar
   ├── commons-logging-1.2.jar
   ├── fluent-hc-4.5.13.jar
   ├── httpclient-4.5.13.jar
   ├── httpclient-cache-4.5.13.jar
   ├── httpclient-osgi-4.5.13.jar
   ├── httpclient-win-4.5.13.jar
   ├── httpcore-4.4.13.jar
   ├── httpmime-4.5.13.jar
   ├── jna-4.5.2.jar
   └── jna-platform-4.5.2.jar
```

Now set your `CLASSPATH` to know where the jar files are located.

```
export CLASSPATH=./lib/*:.
```

## Build

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

