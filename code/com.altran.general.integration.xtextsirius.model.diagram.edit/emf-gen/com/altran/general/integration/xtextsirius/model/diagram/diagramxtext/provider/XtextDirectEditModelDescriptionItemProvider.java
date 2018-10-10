/**
 * Copyright (C) 2018 Altran Netherlands B.V.
 *
 * This program and the accompanying materials are made
 * available under the terms of the Eclipse Public License 2.0
 * which is available at https://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 */
package com.altran.general.integration.xtextsirius.model.diagram.diagramxtext.provider;


import java.util.Collection;
import java.util.List;

import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.edit.provider.ComposeableAdapterFactory;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.ItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.ViewerNotification;

import com.altran.general.integration.xtextsirius.model.diagram.diagramxtext.DiagramxtextPackage;
import com.altran.general.integration.xtextsirius.model.diagram.diagramxtext.XtextDirectEditModelDescription;
import com.altran.general.integration.xtextsirius.model.xtext.xtextsirius.XtextsiriusPackage;

/**
 * This is the item provider adapter for a
 * {@link com.altran.general.integration.xtextsirius.model.diagram.diagramxtext.XtextDirectEditModelDescription}
 * object. <!-- begin-user-doc --> <!-- end-user-doc -->
 * 
 * @generated
 */
public class XtextDirectEditModelDescriptionItemProvider extends AXtextDirectEditLabelItemProvider {
	/**
	 * This constructs an instance from a factory and a notifier. <!--
	 * begin-user-doc --> <!-- end-user-doc -->
	 *
	 * @generated
	 */
	public XtextDirectEditModelDescriptionItemProvider(final AdapterFactory adapterFactory) {
		super(adapterFactory);
	}

	/**
	 * This returns the property descriptors for the adapted class. <!--
	 * begin-user-doc --> <!-- end-user-doc -->
	 *
	 * @generated
	 */
	@Override
	public List<IItemPropertyDescriptor> getPropertyDescriptors(final Object object) {
		if (this.itemPropertyDescriptors == null) {
			super.getPropertyDescriptors(object);

			addInjectorIdPropertyDescriptor(object);
			addMultiLinePropertyDescriptor(object);
			addEditableFeaturesPropertyDescriptor(object);
			addIgnoredNestedFeaturesPropertyDescriptor(object);
			addPrefixTerminalsExpressionPropertyDescriptor(object);
			addSuffixTerminalsExpressionPropertyDescriptor(object);
			addSelectedFeaturesPropertyDescriptor(object);
		}
		return this.itemPropertyDescriptors;
	}

	/**
	 * This adds a property descriptor for the Injector Id feature. <!--
	 * begin-user-doc --> <!-- end-user-doc -->
	 *
	 * @generated
	 */
	protected void addInjectorIdPropertyDescriptor(final Object object) {
		this.itemPropertyDescriptors
				.add(createItemPropertyDescriptor(
						((ComposeableAdapterFactory) this.adapterFactory).getRootAdapterFactory(),
						getResourceLocator(),
						getString("_UI_IXtextDescription_injectorId_feature"),
						getString("_UI_PropertyDescriptor_description", "_UI_IXtextDescription_injectorId_feature",
								"_UI_IXtextDescription_type"),
						XtextsiriusPackage.Literals.IXTEXT_DESCRIPTION__INJECTOR_ID,
						true,
						false,
						false,
						ItemPropertyDescriptor.GENERIC_VALUE_IMAGE,
						null,
						null));
	}

	/**
	 * This adds a property descriptor for the Multi Line feature. <!--
	 * begin-user-doc --> <!-- end-user-doc -->
	 *
	 * @generated
	 */
	protected void addMultiLinePropertyDescriptor(final Object object) {
		this.itemPropertyDescriptors.add(createItemPropertyDescriptor(
				((ComposeableAdapterFactory) this.adapterFactory).getRootAdapterFactory(),
				getResourceLocator(),
				getString("_UI_IXtextDirectEditDescription_multiLine_feature"),
				getString("_UI_PropertyDescriptor_description", "_UI_IXtextDirectEditDescription_multiLine_feature",
						"_UI_IXtextDirectEditDescription_type"),
				XtextsiriusPackage.Literals.IXTEXT_DIRECT_EDIT_DESCRIPTION__MULTI_LINE,
				true,
				false,
				false,
				ItemPropertyDescriptor.BOOLEAN_VALUE_IMAGE,
				null,
				null));
	}

	/**
	 * This adds a property descriptor for the Editable Features feature. <!--
	 * begin-user-doc --> <!-- end-user-doc -->
	 *
	 * @generated
	 */
	protected void addEditableFeaturesPropertyDescriptor(final Object object) {
		this.itemPropertyDescriptors.add(createItemPropertyDescriptor(
				((ComposeableAdapterFactory) this.adapterFactory).getRootAdapterFactory(),
				getResourceLocator(),
				getString("_UI_IXtextModelDescription_editableFeatures_feature"),
				getString("_UI_PropertyDescriptor_description", "_UI_IXtextModelDescription_editableFeatures_feature",
						"_UI_IXtextModelDescription_type"),
				XtextsiriusPackage.Literals.IXTEXT_MODEL_DESCRIPTION__EDITABLE_FEATURES,
				true,
				false,
				false,
				ItemPropertyDescriptor.GENERIC_VALUE_IMAGE,
				null,
				null));
	}

	/**
	 * This adds a property descriptor for the Ignored Nested Features feature.
	 * <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	protected void addIgnoredNestedFeaturesPropertyDescriptor(final Object object) {
		this.itemPropertyDescriptors.add(createItemPropertyDescriptor(
				((ComposeableAdapterFactory) this.adapterFactory).getRootAdapterFactory(),
				getResourceLocator(),
				getString("_UI_IXtextModelDescription_ignoredNestedFeatures_feature"),
				getString("_UI_PropertyDescriptor_description",
						"_UI_IXtextModelDescription_ignoredNestedFeatures_feature", "_UI_IXtextModelDescription_type"),
				XtextsiriusPackage.Literals.IXTEXT_MODEL_DESCRIPTION__IGNORED_NESTED_FEATURES,
				true,
				false,
				false,
				ItemPropertyDescriptor.GENERIC_VALUE_IMAGE,
				null,
				null));
	}

	/**
	 * This adds a property descriptor for the Prefix Terminals Expression
	 * feature. <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	protected void addPrefixTerminalsExpressionPropertyDescriptor(final Object object) {
		this.itemPropertyDescriptors
				.add(createItemPropertyDescriptor(
						((ComposeableAdapterFactory) this.adapterFactory).getRootAdapterFactory(),
						getResourceLocator(),
						getString("_UI_IXtextModelDescription_prefixTerminalsExpression_feature"),
						getString("_UI_PropertyDescriptor_description",
								"_UI_IXtextModelDescription_prefixTerminalsExpression_feature",
								"_UI_IXtextModelDescription_type"),
						XtextsiriusPackage.Literals.IXTEXT_MODEL_DESCRIPTION__PREFIX_TERMINALS_EXPRESSION,
						true,
						false,
						false,
						ItemPropertyDescriptor.GENERIC_VALUE_IMAGE,
						null,
						null));
	}

	/**
	 * This adds a property descriptor for the Suffix Terminals Expression
	 * feature. <!-- begin-user-doc --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	protected void addSuffixTerminalsExpressionPropertyDescriptor(final Object object) {
		this.itemPropertyDescriptors
				.add(createItemPropertyDescriptor(
						((ComposeableAdapterFactory) this.adapterFactory).getRootAdapterFactory(),
						getResourceLocator(),
						getString("_UI_IXtextModelDescription_suffixTerminalsExpression_feature"),
						getString("_UI_PropertyDescriptor_description",
								"_UI_IXtextModelDescription_suffixTerminalsExpression_feature",
								"_UI_IXtextModelDescription_type"),
						XtextsiriusPackage.Literals.IXTEXT_MODEL_DESCRIPTION__SUFFIX_TERMINALS_EXPRESSION,
						true,
						false,
						false,
						ItemPropertyDescriptor.GENERIC_VALUE_IMAGE,
						null,
						null));
	}

	/**
	 * This adds a property descriptor for the Selected Features feature. <!--
	 * begin-user-doc --> <!-- end-user-doc -->
	 *
	 * @generated
	 */
	protected void addSelectedFeaturesPropertyDescriptor(final Object object) {
		this.itemPropertyDescriptors
				.add(createItemPropertyDescriptor(
						((ComposeableAdapterFactory) this.adapterFactory).getRootAdapterFactory(),
						getResourceLocator(),
						getString("_UI_IXtextDirectEditModelDescription_selectedFeatures_feature"),
						getString("_UI_PropertyDescriptor_description",
								"_UI_IXtextDirectEditModelDescription_selectedFeatures_feature",
								"_UI_IXtextDirectEditModelDescription_type"),
						XtextsiriusPackage.Literals.IXTEXT_DIRECT_EDIT_MODEL_DESCRIPTION__SELECTED_FEATURES,
						true,
						false,
						false,
						ItemPropertyDescriptor.GENERIC_VALUE_IMAGE,
						null,
						null));
	}

	/**
	 * This returns XtextDirectEditModelDescription.gif. <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public Object getImage(final Object object) {
		return overlayImage(object, getResourceLocator().getImage("full/obj16/XtextDirectEditModelDescription"));
	}

	/**
	 * This returns the label text for the adapted class. <!-- begin-user-doc
	 * --> <!-- end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public String getText(final Object object) {
		final String label = ((XtextDirectEditModelDescription) object).getName();
		return label == null || label.length() == 0 ? getString("_UI_XtextDirectEditModelDescription_type")
				: getString("_UI_XtextDirectEditModelDescription_type") + " " + label;
	}


	/**
	 * This handles model notifications by calling {@link #updateChildren} to
	 * update any cached children and by creating a viewer notification, which
	 * it passes to {@link #fireNotifyChanged}. <!-- begin-user-doc --> <!--
	 * end-user-doc -->
	 * 
	 * @generated
	 */
	@Override
	public void notifyChanged(final Notification notification) {
		updateChildren(notification);

		switch (notification.getFeatureID(XtextDirectEditModelDescription.class)) {
			case DiagramxtextPackage.XTEXT_DIRECT_EDIT_MODEL_DESCRIPTION__INJECTOR_ID:
			case DiagramxtextPackage.XTEXT_DIRECT_EDIT_MODEL_DESCRIPTION__MULTI_LINE:
			case DiagramxtextPackage.XTEXT_DIRECT_EDIT_MODEL_DESCRIPTION__EDITABLE_FEATURES:
			case DiagramxtextPackage.XTEXT_DIRECT_EDIT_MODEL_DESCRIPTION__IGNORED_NESTED_FEATURES:
			case DiagramxtextPackage.XTEXT_DIRECT_EDIT_MODEL_DESCRIPTION__PREFIX_TERMINALS_EXPRESSION:
			case DiagramxtextPackage.XTEXT_DIRECT_EDIT_MODEL_DESCRIPTION__SUFFIX_TERMINALS_EXPRESSION:
			case DiagramxtextPackage.XTEXT_DIRECT_EDIT_MODEL_DESCRIPTION__SELECTED_FEATURES:
				fireNotifyChanged(new ViewerNotification(notification, notification.getNotifier(), false, true));
				return;
		}
		super.notifyChanged(notification);
	}

	/**
	 * This adds {@link org.eclipse.emf.edit.command.CommandParameter}s
	 * describing the children that can be created under this object. <!--
	 * begin-user-doc --> <!-- end-user-doc -->
	 *
	 * @generated
	 */
	@Override
	protected void collectNewChildDescriptors(final Collection<Object> newChildDescriptors, final Object object) {
		super.collectNewChildDescriptors(newChildDescriptors, object);
	}

}