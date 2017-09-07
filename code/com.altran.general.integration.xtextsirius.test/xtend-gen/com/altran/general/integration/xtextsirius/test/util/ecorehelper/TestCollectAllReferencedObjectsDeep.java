package com.altran.general.integration.xtextsirius.test.util.ecorehelper;

import com.altran.general.integration.xtextsirius.test.util.ecorehelper.ATestEcoreHelper;
import java.util.List;
import java.util.stream.Collectors;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.example.fowlerdsl.statemachine.Constant;
import org.eclipse.xtext.example.fowlerdsl.statemachine.Event;
import org.eclipse.xtext.example.fowlerdsl.statemachine.Statemachine;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.junit.Assert;
import org.junit.Test;

@SuppressWarnings("all")
public class TestCollectAllReferencedObjectsDeep extends ATestEcoreHelper {
  @Test
  public void empty() {
    final Statemachine model = this.getDefaultModel();
    final Event event = model.getEvents().get(0);
    final List<EObject> objects = this.getAccessibleEcoreHelper().collectAllReferencedObjectsDeep(event).collect(Collectors.<EObject>toList());
    Assert.assertEquals(0, objects.size());
  }
  
  @Test
  public void simple() {
    final Statemachine model = this.getDefaultModel();
    final Event event = model.getEvents().get(2);
    final List<EObject> objects = this.getAccessibleEcoreHelper().collectAllReferencedObjectsDeep(event).collect(Collectors.<EObject>toList());
    Assert.assertEquals(1, objects.size());
    EObject _head = IterableExtensions.<EObject>head(objects);
    Assert.assertEquals("constant1", ((Constant) _head).getName());
  }
  
  @Test
  public void deep() {
    final Statemachine model = this.getDefaultModel();
    final Event event = model.getEvents().get(4);
    final List<EObject> objects = this.getAccessibleEcoreHelper().collectAllReferencedObjectsDeep(event).collect(Collectors.<EObject>toList());
    Assert.assertEquals(objects.toString(), 2, objects.size());
    Assert.assertNotNull(this.findFirstByName(objects, "constant2"));
    Assert.assertNotNull(this.findFirstByName(objects, "constant3X"));
  }
}
