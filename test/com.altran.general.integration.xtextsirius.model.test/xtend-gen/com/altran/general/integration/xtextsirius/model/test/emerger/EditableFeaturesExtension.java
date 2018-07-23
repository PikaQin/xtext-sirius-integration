package com.altran.general.integration.xtextsirius.model.test.emerger;

import com.altran.general.integration.xtextsirius.model.test.XtextSiriusTest.Element;
import com.altran.general.integration.xtextsirius.model.test.emerger.ATestEMerger;
import com.altran.general.integration.xtextsirius.util.EMerger;
import com.google.common.base.Objects;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.xtext.xbase.lib.CollectionLiterals;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.eclipse.xtext.xbase.lib.ListExtensions;
import org.junit.Assert;

@SuppressWarnings("all")
public class EditableFeaturesExtension {
  protected Element existing;
  
  protected Set<EStructuralFeature> untouchedFeatures;
  
  private ATestEMerger test;
  
  public EditableFeaturesExtension(final ATestEMerger test) {
    this.test = test;
  }
  
  public EMerger<Element> createEMerger(final Element existing, final Element edited) {
    final Function1<EStructuralFeature, Boolean> _function = (EStructuralFeature it) -> {
      return Boolean.valueOf(edited.eIsSet(it));
    };
    final Function1<EStructuralFeature, String> _function_1 = (EStructuralFeature it) -> {
      return it.getName();
    };
    return this.createEMerger(existing, edited, IterableExtensions.<String>toSet(IterableExtensions.<EStructuralFeature, String>map(IterableExtensions.<EStructuralFeature>filter(edited.eClass().getEAllStructuralFeatures(), _function), _function_1)));
  }
  
  public EMerger<Element> createEMerger(final Element existing, final Element edited, final Set<String> editableFeatures) {
    EMerger<Element> _xblockexpression = null;
    {
      this.existing = existing;
      final Function1<EStructuralFeature, Boolean> _function = (EStructuralFeature it) -> {
        return Boolean.valueOf(it.isChangeable());
      };
      final Function1<EStructuralFeature, Boolean> _function_1 = (EStructuralFeature it) -> {
        boolean _contains = editableFeatures.contains(it.getName());
        return Boolean.valueOf((!_contains));
      };
      this.untouchedFeatures = IterableExtensions.<EStructuralFeature>toSet(IterableExtensions.<EStructuralFeature>filter(IterableExtensions.<EStructuralFeature>filter(edited.eClass().getEAllStructuralFeatures(), _function), _function_1));
      final Consumer<EStructuralFeature> _function_2 = (EStructuralFeature it) -> {
        this.fillFeature(it);
      };
      this.untouchedFeatures.forEach(_function_2);
      Set<String> _emptySet = CollectionLiterals.<String>emptySet();
      URI _createURI = URI.createURI("resourceName.xmi#/42");
      _xblockexpression = new EMerger<Element>(existing, edited, editableFeatures, _emptySet, _createURI);
    }
    return _xblockexpression;
  }
  
  public void checkUntouchedFeatures() {
    Assert.assertNotNull(this.existing);
    final Consumer<EStructuralFeature> _function = (EStructuralFeature feature) -> {
      int i = 100;
      Object _switchResult = null;
      boolean _matched = false;
      if (feature instanceof EAttribute) {
        _matched=true;
        _switchResult = this.createAttributeValue(((EAttribute)feature));
      }
      if (!_matched) {
        if (feature instanceof EReference) {
          _matched=true;
          Object _xblockexpression = null;
          {
            final AtomicInteger integer = new AtomicInteger(i);
            final Object r = this.createReferenceValue(((EReference)feature), integer);
            i = integer.get();
            _xblockexpression = r;
          }
          _switchResult = _xblockexpression;
        }
      }
      final Object expected = _switchResult;
      boolean _isMany = feature.isMany();
      if (_isMany) {
        boolean _matched_1 = false;
        if (feature instanceof EAttribute) {
          _matched_1=true;
          Object _eGet = this.existing.eGet(feature);
          Assert.assertArrayEquals(((EAttribute)feature).getName(), ((List<?>) expected).toArray(), ((List<?>) _eGet).toArray());
        }
        if (!_matched_1) {
          if (feature instanceof EReference) {
            _matched_1=true;
            final Function1<Object, String> _function_1 = (Object it) -> {
              return this.extractAttr(it);
            };
            Object _eGet = this.existing.eGet(feature);
            final Function1<Object, String> _function_2 = (Object it) -> {
              return this.extractAttr(it);
            };
            Assert.assertArrayEquals(((EReference)feature).getName(), ListExtensions.map(((List<?>) expected), _function_1).toArray(), ListExtensions.map(((List<?>) _eGet), _function_2).toArray());
          }
        }
      } else {
        boolean _matched_2 = false;
        if (feature instanceof EAttribute) {
          _matched_2=true;
          Assert.assertEquals(((EAttribute)feature).getName(), expected, this.existing.eGet(feature));
        }
        if (!_matched_2) {
          if (feature instanceof EReference) {
            _matched_2=true;
            Assert.assertEquals(((EReference)feature).getName(), this.extractAttr(expected), this.extractAttr(this.existing.eGet(feature)));
          }
        }
      }
    };
    this.untouchedFeatures.forEach(_function);
  }
  
  protected String extractAttr(final Object el) {
    return ((Element) el).getChangeableAttr();
  }
  
  protected Integer fillFeature(final EStructuralFeature feature) {
    int _xblockexpression = (int) 0;
    {
      int i = 100;
      int _switchResult = (int) 0;
      boolean _matched = false;
      if (feature instanceof EAttribute) {
        _matched=true;
        this.existing.eSet(feature, this.createAttributeValue(((EAttribute)feature)));
      }
      if (!_matched) {
        if (feature instanceof EReference) {
          _matched=true;
          int _xblockexpression_1 = (int) 0;
          {
            final AtomicInteger integer = new AtomicInteger(i);
            this.existing.eSet(feature, this.createReferenceValue(((EReference)feature), integer));
            _xblockexpression_1 = i = integer.get();
          }
          _switchResult = _xblockexpression_1;
        }
      }
      _xblockexpression = _switchResult;
    }
    return Integer.valueOf(_xblockexpression);
  }
  
  protected Object createAttributeValue(final EAttribute feature) {
    Object _xifexpression = null;
    boolean _isMany = feature.isMany();
    if (_isMany) {
      List<? extends Object> _switchResult = null;
      EClassifier _eType = feature.getEType();
      boolean _matched = false;
      if (Objects.equal(_eType, EcorePackage.Literals.ESTRING)) {
        _matched=true;
        _switchResult = Collections.<String>unmodifiableList(CollectionLiterals.<String>newArrayList("aaa", "bbb"));
      }
      if (!_matched) {
        if (Objects.equal(_eType, EcorePackage.Literals.EINT)) {
          _matched=true;
          _switchResult = Collections.<Integer>unmodifiableList(CollectionLiterals.<Integer>newArrayList(Integer.valueOf(23), Integer.valueOf(42)));
        }
      }
      if (!_matched) {
        if (Objects.equal(_eType, EcorePackage.Literals.EDOUBLE)) {
          _matched=true;
          _switchResult = Collections.<Double>unmodifiableList(CollectionLiterals.<Double>newArrayList(Double.valueOf(2.71), Double.valueOf(3.14)));
        }
      }
      _xifexpression = _switchResult;
    } else {
      EClassifier _eType_1 = feature.getEType();
      String _switchResult_1 = null;
      EClassifier _eType_2 = feature.getEType();
      boolean _matched_1 = false;
      if (Objects.equal(_eType_2, EcorePackage.Literals.ESTRING)) {
        _matched_1=true;
        _switchResult_1 = "aaa";
      }
      if (!_matched_1) {
        if (Objects.equal(_eType_2, EcorePackage.Literals.EINT)) {
          _matched_1=true;
          _switchResult_1 = "23";
        }
      }
      if (!_matched_1) {
        if (Objects.equal(_eType_2, EcorePackage.Literals.EDOUBLE)) {
          _matched_1=true;
          _switchResult_1 = "2.71";
        }
      }
      _xifexpression = EcoreUtil.createFromString(((EDataType) _eType_1), _switchResult_1);
    }
    return _xifexpression;
  }
  
  protected Object createReferenceValue(final EReference feature, final AtomicInteger integer) {
    int i = integer.get();
    Object _xifexpression = null;
    boolean _isMany = feature.isMany();
    if (_isMany) {
      int _plusPlus = i++;
      String _plus = ("untouched" + Integer.valueOf(_plusPlus));
      Element _newElement = this.test.newElement(i, _plus);
      int _plusPlus_1 = i++;
      String _plus_1 = ("untouched" + Integer.valueOf(_plusPlus_1));
      Element _newElement_1 = this.test.newElement(i, _plus_1);
      _xifexpression = Collections.<Element>unmodifiableList(CollectionLiterals.<Element>newArrayList(_newElement, _newElement_1));
    } else {
      int _plusPlus_2 = i++;
      String _plus_2 = ("untouched" + Integer.valueOf(_plusPlus_2));
      _xifexpression = this.test.newElement(i, _plus_2);
    }
    final Object result = _xifexpression;
    integer.set(i);
    return result;
  }
}
