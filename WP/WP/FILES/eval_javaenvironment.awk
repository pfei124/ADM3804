#!/bin/gawk -f

## ---------------------------------------------------------------------------
## Java-Environment:  DBSTSME1 @ gtunxlnw06991
## SYBASE:            /DBA/sybase/ASE-16.0SP04PL03
## JAVA_HOME:         /DBA/sybase/ASE-16.0SP04PL03/shared/SAPJRE-8_1_089_64BIT
## SAP_JRE7:
## SAP_JRE8:
## SCC_JAVA_HOME:     /shared/SAPJRE-8_1_089_64BIT
## COCKPIT_JAVA_HOME:
## CLASSPATH:         /DBA/sybase/ASE-16.0SP04PL03/jConnect-16_0/classes/jconn4.jar:/DBA/sybase/ASE-16.0SP04PL03/jConnect-16_0/classes
## JDBC_HOME:         /DBA/sybase/ASE-16.0SP04PL03/jConnect-16_0
## 
## ---------------------------------------------------------------------------
## Java-Environment:  DBSTSME5 @ gtunxlnb06528
## SYBASE:            /DBA/sybase/ASE-16.0SP04PL03

BEGIN {
  # 20250314__DBSPERS0B_javaenvironment.txt
  filename = ARGV[1]
  ARGC = 2
  sub("__","_a_",filename)
  split(filename,filenamearray,"_")
  ASENAME=filenamearray[3]
}

/^JDBC_HOME: / {
  jdbchome = $2
  jdbchomes[key] = jdbchome
}

/^CLASSPATH: / {
  classpath = $2
  classpaths[key] = classpath
}

/^COCKPIT_JAVA_HOME: / {
  cockpitjavahome = $2
  cockpitjavahomes[key] = cockpitjavahome
}

/^SCC_JAVA_HOME: / {
  sccjavahome = $2
  sccjavahomes[key] = sccjavahome
}

/^SAP_JRE8: / {
  sapjre8 = $2
  sapjre8s[key] = sapjre8
}

/^SAP_JRE7: / {
  sapjre7 = $2
  sapjre7s[key] = sapjre7
}

/^JAVA_HOME: / {
  javahome = $2
  javahomes[key] = javahome
}

/^SYBASE: / {
  sybase = $2
  sybases[key] = sybase
}

/^Java-Environment: / {
  ase = $2
  hostname = $4
  key = hostname "__" ase
  keys[key] = key
}

END {
  for ( k in keys ) {
    split(key,keyarray,"__")
    h = keyarray[1]
    a = keyarray[2]
    printf "%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;\n",key,h,a,sybases[k],javahomes[k],sapjre7s[k],sapjre8s[k],sccjavahomes[k],cockpitjavahomes[k],classpaths[k],jdbchomes[k]
  }
}

