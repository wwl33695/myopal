/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.7
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.opalvoip.opal;

public final class OpalLineAppearanceStates {
  public final static OpalLineAppearanceStates OpalLineTerminated = new OpalLineAppearanceStates("OpalLineTerminated");
  public final static OpalLineAppearanceStates OpalLineTrying = new OpalLineAppearanceStates("OpalLineTrying");
  public final static OpalLineAppearanceStates OpalLineProceeding = new OpalLineAppearanceStates("OpalLineProceeding");
  public final static OpalLineAppearanceStates OpalLineRinging = new OpalLineAppearanceStates("OpalLineRinging");
  public final static OpalLineAppearanceStates OpalLineConnected = new OpalLineAppearanceStates("OpalLineConnected");
  public final static OpalLineAppearanceStates OpalLineSubcribed = new OpalLineAppearanceStates("OpalLineSubcribed");
  public final static OpalLineAppearanceStates OpalLineUnsubcribed = new OpalLineAppearanceStates("OpalLineUnsubcribed");
  public final static OpalLineAppearanceStates OpalLineIdle = new OpalLineAppearanceStates("OpalLineIdle", OPALJNI.OpalLineIdle_get());

  public final int swigValue() {
    return swigValue;
  }

  public String toString() {
    return swigName;
  }

  public static OpalLineAppearanceStates swigToEnum(int swigValue) {
    if (swigValue < swigValues.length && swigValue >= 0 && swigValues[swigValue].swigValue == swigValue)
      return swigValues[swigValue];
    for (int i = 0; i < swigValues.length; i++)
      if (swigValues[i].swigValue == swigValue)
        return swigValues[i];
    throw new IllegalArgumentException("No enum " + OpalLineAppearanceStates.class + " with value " + swigValue);
  }

  private OpalLineAppearanceStates(String swigName) {
    this.swigName = swigName;
    this.swigValue = swigNext++;
  }

  private OpalLineAppearanceStates(String swigName, int swigValue) {
    this.swigName = swigName;
    this.swigValue = swigValue;
    swigNext = swigValue+1;
  }

  private OpalLineAppearanceStates(String swigName, OpalLineAppearanceStates swigEnum) {
    this.swigName = swigName;
    this.swigValue = swigEnum.swigValue;
    swigNext = this.swigValue+1;
  }

  private static OpalLineAppearanceStates[] swigValues = { OpalLineTerminated, OpalLineTrying, OpalLineProceeding, OpalLineRinging, OpalLineConnected, OpalLineSubcribed, OpalLineUnsubcribed, OpalLineIdle };
  private static int swigNext = 0;
  private final int swigValue;
  private final String swigName;
}

